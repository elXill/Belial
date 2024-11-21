extends CCM
class_name Belial_CC_AP

##There is 2 frame latency between input and new state, which can be solved with 2x my_anim_tree.advance(0) which causes other problems
##Example; root motion values always being 0 get_root_motion_position() depending on place used in script,
##Example; causes a lag for set_bone_global_pose_no_override() function (1 or 2 frames), when used with conjunction of BoneAttachment3D and Marker3D.

const GRAVITY : float = -0.5

var camera_pivot : Node3D
@export var state_machine : ManualStateMachine
var char_body : CharacterBody3D
var difference: Vector3 = Vector3(0,0,0)
var prev_root_motion_position_accumulator : Vector3

var my_anim_player : AnimationPlayer = null

var pivot_base_y : float = 0
var frame : int = 0 ## This value maybe should be made a singleton in the future
var input_subframe: int = 0

var surplus_rotation_y : float
var forward_tap_time : float = 15
var sensitivity : float = 0.002
var camera_rotation : Vector3 = Vector3(0,0,0)
var diagonal_rot_step : float = 0
var diagonal_rot_total : float = 0
var surplus_cam_rot_vel: float = 0
var surplus_cam_rot_delta: float = 0
var immobile_rot_char_y: float = 0
var last_root_motion : Vector3 = Vector3(0,0,0)

var old_bone_positions: Array[Vector3] = [Vector3(0,0,0),Vector3(0,0,0)]


var char_base_y : float = 0
var current_state : StateEnum
var prior_state : StateEnum


var body_base_transform : Transform3D = Transform3D()
var body_rot_val : float = 0
var immobile_rot : float = 0
var mouse_rot_offset : float = 0
var immobile_rot_diff : float = 0
var immobile_rot_end : float = 0
var my_skeleton : Skeleton3D
var bone_array : Array[int] = [0,0,0]

var immobile_turn : bool = false
var immobile_turn_0 : bool = true
var carry_immobile_rot : bool = false
var immobile_rot_ended : bool = false
var override_next : bool = false
var immobile_rot_diff_allthetime

var off_ground_counter : int = 0

## Input Properties
var jump_charge : int = 0
var jump_flag : bool = false
var jump_velocity : Vector3 = Vector3(0,0,0)
var gravity_velocity : float = 0.0

var frame_key_memory : Array[bool] = [false,false,false,false,false,false] ##??? Su anda gerekli degil

func _ready():
	
	my_skeleton = get_node("Belial-AP/Belial_Godot/Belial_Godot_SemiConnectRig/Skeleton3D")
	char_body = get_node ("Belial-AP/Belial_Godot")
	body_base_transform.basis = char_body.basis
	GlobalPlayerInput.char_ready = true
	my_anim_player = get_node("Belial-AP/Belial_Godot/AnimationPlayer")
	camera_pivot = get_node("Belial-AP/Belial_Godot/CameraPivot")
	pivot_base_y = camera_pivot.basis.get_euler().y

	
	bone_array[0] = my_skeleton.find_bone("DEF-spine.003")
	bone_array[1] = my_skeleton.find_bone("DEF-neck")
	bone_array[2] = my_skeleton.find_bone("DEF-head")
	
	camera_rotation = char_body.basis.get_euler()
	immobile_rot_end= char_body.basis.get_euler().y
	
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _physics_process(delta):
	
	forward_tap_time = forward_tap_time+1
	frame = frame+1
	
	#Get Current State to use in script
	current_state = state_machine.current_state
	prior_state = state_machine.prior_state
	
	print("Is on floor:", char_body.is_on_floor())
	
	_camera_rotation()
	_state_logic(current_state)
	immobile_rot_diff_allthetime = delta_angle(immobile_rot_char_y, camera_rotation.y)
	_fall_check()
	_apply_rotations(delta)
	#This can be toned down, effect just head or closed according to state
	_animation_override(delta)

func _state_logic(state : StateEnum):
	match state:
		##Immobile; standing or turning
		StateEnum.IDLE, StateEnum.TURNING_LEFT, StateEnum.TURNING_RIGHT:
			_immobile_rotation()
			
		StateEnum.SLIDE:
			GlobalPlayerInput.sprint = false
			_rotateable_motion()
			_diagonal_rotation_calc()
			_root_motion()
		
		StateEnum.JUMP_NEUTRAL:
			_get_jump_input_profile()
		
		StateEnum.MID_JUMP:
			_jump_motion()
			_clean_jump_input_profile()
			
		StateEnum.LANDING:
			jump_flag = false
			_rotateable_motion()
			_root_motion()
			#gravity_velocity = 0
		##Rotation and motion process
		_:
			_rotateable_motion()
			_diagonal_rotation_calc()
			_root_motion()

func _get_jump_input_profile():
	if(GlobalPlayerInput.jump == true):
		jump_charge += 1
	if(GlobalPlayerInput.forward):
		jump_velocity.z += 1
	if(GlobalPlayerInput.back):
		jump_velocity.z -= 1
	if(GlobalPlayerInput.left):
		jump_velocity.x += 1
	if(GlobalPlayerInput.right):
		jump_velocity.x -= 1

func _clean_jump_input_profile(): 
	jump_charge = 0
	jump_velocity = Vector3(0,0,0)

func _fall_check():
	if(char_body.is_on_floor()):
		GlobalPlayerInput.mid_air = false
		off_ground_counter = 0
		gravity_velocity = 0
	else:
		GlobalPlayerInput.mid_air = true
		off_ground_counter += 1
		gravity_velocity += GRAVITY

func _immobile_rotation():
	
	
	immobile_rot_diff = delta_angle(immobile_rot_char_y, camera_rotation.y)
	
	#If turnable states and diff > 70 --> immobile turn = true
	if(	current_state == StateEnum.IDLE or \
		current_state == StateEnum.TURNING_LEFT or \
		current_state == StateEnum.TURNING_RIGHT ):
		if(prior_state == StateEnum.LANDING):
			_rotate_for_immobile(0)
		else:
			_rotate_for_immobile(70)

func _rotate_for_immobile(trigger_rot_difference):
	if (immobile_rot_diff>deg_to_rad(trigger_rot_difference)):
		immobile_turn = true
		GlobalPlayerInput.immobile_rotation_left = true
		GlobalPlayerInput.immobile_rotation_right = false

	if (immobile_rot_diff<deg_to_rad(-trigger_rot_difference)):
		immobile_turn = true
		GlobalPlayerInput.immobile_rotation_right = true
		GlobalPlayerInput.immobile_rotation_left = false

	if(immobile_turn == true):
		if(immobile_rot_diff > 0):
			immobile_rot = immobile_rot + deg_to_rad(6)
			if (immobile_rot > immobile_rot_char_y + immobile_rot_diff):
				immobile_rot_char_y = immobile_rot_char_y - ((2*PI)* floor((immobile_rot_char_y+(PI))/ (2*PI)))
				immobile_rot = immobile_rot_char_y + immobile_rot_diff
				immobile_turn_0 = false
				

		if(immobile_rot_diff < 0):
			immobile_rot = immobile_rot - deg_to_rad(6)
			if (immobile_rot < immobile_rot_char_y + immobile_rot_diff):
				immobile_rot_char_y = immobile_rot_char_y - ((2*PI)* floor((immobile_rot_char_y+(PI))/ (2*PI)))
				immobile_rot = immobile_rot_char_y + immobile_rot_diff
				immobile_turn_0 = false
		
		if(immobile_turn and !immobile_turn_0):
			immobile_rot_char_y = immobile_rot
			immobile_turn = false
			immobile_turn_0 = true
			GlobalPlayerInput.immobile_rotation_left = false
			GlobalPlayerInput.immobile_rotation_right = false

func _rotateable_motion():
	##This makes immobile rotation not go over 360 and cause multiple full rotations
	immobile_rot_char_y = immobile_rot
	
	##If you start running while immobile rotation animation in effect, its parameters doesn't turn into false so here we are doing that just in case
	GlobalPlayerInput.immobile_rotation_left = false
	GlobalPlayerInput.immobile_rotation_right = false
	
	immobile_rot = rotate_toward(immobile_rot,camera_rotation.y, deg_to_rad(6))

func _apply_rotations(delta):
	
	##Apply character rotation
	char_body.basis = Basis.from_euler(Vector3(0.0, immobile_rot + diagonal_rot_total, 0.0))
	
	
	##Are we gonna add surplus rotation or subtract from it
	if(GlobalPlayerInput.mouse_dirty):
		GlobalPlayerInput.mouse_dirty= false
		_surplus_rotation_calc_add(delta)
	
	_surplus_rotation_calc_sub()

	##Apply mouse rotation
	camera_pivot.basis = Basis.from_euler(Vector3( \
	camera_rotation.x,  \
	camera_rotation.y + surplus_rotation_y - immobile_rot-diagonal_rot_total, \
	0))

var _jump_charge : int = 0
var _jump_velocity : Vector3 = Vector3 (0,0,0)
func _jump_motion():
	if(!jump_flag):
		if(jump_charge <= 2):
			jump_charge = 3
		_jump_charge = jump_charge
		_jump_velocity = jump_velocity
		_jump_velocity.y = 2*jump_charge - GRAVITY
		jump_flag = true
	
			
	char_body.velocity = _jump_velocity
	char_body.velocity.y += gravity_velocity
	char_body.move_and_slide()

##Apply root motion, considering character rotation for diagonal runs
func _root_motion():
	char_body.velocity = 100*state_machine.get_root_motion_position().rotated(Vector3.UP ,char_body.rotation.y)
	char_body.velocity.y += gravity_velocity
	char_body.move_and_slide()
	
	if(state_machine.unregistered_root_motion_last):
		state_machine.unregistered_root_motion_last = false
		char_body.position += state_machine.states_array[state_machine.current_state][state_machine.StateIndexEnum.LAST_ROOT_MOTION].rotated(Vector3.UP ,char_body.rotation.y)
	if(state_machine.unregistered_root_motion_first):
		state_machine.unregistered_root_motion_first = false
		char_body.position += state_machine.states_array[state_machine.current_state][state_machine.StateIndexEnum.FIRST_ROOT_MOTION].rotated(Vector3.UP ,char_body.rotation.y)

##Mouse Camera Rotation
func _camera_rotation():
	
	if(GlobalPlayerInput.mouse_dirty):
		
		camera_rotation.x = camera_rotation.x + (GlobalPlayerInput.mouse_xy.y*sensitivity/5)
		camera_rotation.x = clampf(camera_rotation.x, -PI/3, PI/3)
		
		
		camera_rotation.y = camera_rotation.y + (-GlobalPlayerInput.mouse_xy.x*sensitivity)
		
		
		camera_rotation.y = camera_rotation.y - ((2*PI)* floor((camera_rotation.y+(PI))/ (2*PI)))
	
		#Mause Input of Surplus Y Rotation 
		surplus_rotation_y = surplus_rotation_y + GlobalPlayerInput.mouse_xy.x*sensitivity/2

##Surplus rotation is when mouse moved so much camera lags behind a bit, so camera is not always at the back of character
func _surplus_rotation_calc_add(delta):
#Tracking speed
	if (surplus_rotation_y/PI <0.2):
		if(surplus_cam_rot_vel<delta*8):
			surplus_cam_rot_vel = surplus_cam_rot_vel + delta
	if (surplus_rotation_y/PI >0.8):
		if(surplus_cam_rot_vel>delta*8):
			surplus_cam_rot_vel = surplus_cam_rot_vel - delta

func _surplus_rotation_calc_sub():
	#Surplus rotation tracking movement
	if(surplus_rotation_y > 0):
		surplus_rotation_y = surplus_rotation_y-(surplus_cam_rot_vel)
		surplus_cam_rot_delta = -surplus_cam_rot_vel
	elif (surplus_rotation_y < 0):
		surplus_rotation_y = surplus_rotation_y+(surplus_cam_rot_vel)
		surplus_cam_rot_delta = surplus_cam_rot_vel
		
	if(surplus_rotation_y> -surplus_cam_rot_vel and surplus_rotation_y< surplus_cam_rot_vel):
		surplus_cam_rot_delta = 0
		surplus_rotation_y=0
	
		#If rotation is too much counter rotate to rotate camera at the back of character
	if(surplus_rotation_y> PI):
		surplus_rotation_y = -surplus_rotation_y
	elif(surplus_rotation_y< -PI):
		surplus_rotation_y = -surplus_rotation_y

##If two movement buttons are pressed, with the exception of opposites, rotate character slowly according to buttons pressed
var _pass: int = 0
var _steady_rotation_motion : bool = false

func _diagonal_rotation_calc():
	var _diagonal_rotation_target : float = 0
	var _turned_once: bool = false;
	
	
	match current_state:
		StateEnum.CD_LEFT_TO_FORWARD:
			_steady_rotation_motion = false
			if(GlobalPlayerInput.forward == true):
				if (GlobalPlayerInput.right == true):
					_diagonal_rotation_target = deg_to_rad(-45)
					if(_pass>3):
						diagonal_rot_step = deg_to_rad(5)
					else:
						diagonal_rot_step = deg_to_rad(0)
					_pass += 1
					diagonal_rot_step = deg_to_rad(3)
				if (GlobalPlayerInput.left == true):
					_diagonal_rotation_target = deg_to_rad(+45)
					if(_pass>3):
						diagonal_rot_step = deg_to_rad(5)
					else:
						diagonal_rot_step = deg_to_rad(0)
						_pass += 1
						diagonal_rot_step = deg_to_rad(3)
		StateEnum.CD_RIGHT_TO_FORWARD:
			_steady_rotation_motion = false
			if(GlobalPlayerInput.forward == true):
				if (GlobalPlayerInput.right == true):
					_diagonal_rotation_target = deg_to_rad(-45)
					if(_pass>3):
						diagonal_rot_step = deg_to_rad(5)
					else:
						diagonal_rot_step = deg_to_rad(0)
						_pass += 1
				if (GlobalPlayerInput.left == true):
					_diagonal_rotation_target = deg_to_rad(+45)
					if(_pass>3):
						diagonal_rot_step = deg_to_rad(5)
					else:
						diagonal_rot_step = deg_to_rad(0)
						_pass += 1
		StateEnum.FORWARD_STEPA:
			_steady_rotation_motion = false
			if(GlobalPlayerInput.forward == true):
				if (GlobalPlayerInput.right == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(-45)
					diagonal_rot_step = deg_to_rad(3)
				if (GlobalPlayerInput.left == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(+45)
					diagonal_rot_step = deg_to_rad(3)
		StateEnum.FORWARD_RUN:
			_steady_rotation_motion = false
			if(GlobalPlayerInput.forward == true):
				if (GlobalPlayerInput.right == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(-45)
					diagonal_rot_step = deg_to_rad(3)
				if (GlobalPlayerInput.left == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(+45)
					diagonal_rot_step = deg_to_rad(3)
		StateEnum.SPRINT:
			_steady_rotation_motion = false
			if(GlobalPlayerInput.forward == true):
				if (GlobalPlayerInput.right == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(-45)
					diagonal_rot_step = deg_to_rad(3)
				if (GlobalPlayerInput.left == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(+45)
					diagonal_rot_step = deg_to_rad(3)
		StateEnum.BACK_STEPA:
			_steady_rotation_motion = false
			if(GlobalPlayerInput.back == true):
				if (GlobalPlayerInput.right == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(+45)
					diagonal_rot_step = deg_to_rad(3)
				if (GlobalPlayerInput.left == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(-45)
					diagonal_rot_step = deg_to_rad(3)
		StateEnum.BACKWARD_RUN:
			_steady_rotation_motion = false
			if(GlobalPlayerInput.back == true):
				if (GlobalPlayerInput.right == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(+45)
					diagonal_rot_step = deg_to_rad(3)
				if (GlobalPlayerInput.left == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(-45)
					diagonal_rot_step = deg_to_rad(3)
		StateEnum.FORWARD_ROLL:
			if(_steady_rotation_motion == false):
				_steady_rotation_motion = true
				if(GlobalPlayerInput.forward == true):
					if (GlobalPlayerInput.right == true):
						diagonal_rot_total = deg_to_rad(-45)
						return
					if (GlobalPlayerInput.left == true):
						diagonal_rot_total = deg_to_rad(45)
						return
					diagonal_rot_total = 0
		StateEnum.BACK_ROLL:
			if(_steady_rotation_motion == false):
				_steady_rotation_motion = true
				if(GlobalPlayerInput.back == true):
					if (GlobalPlayerInput.right == true):
						diagonal_rot_total = deg_to_rad(45)
						return
					if (GlobalPlayerInput.left == true):
						diagonal_rot_total = deg_to_rad(-45)
						return
					diagonal_rot_total = 0
		StateEnum.LEFT_ROLL:
			if(_steady_rotation_motion == false):
				_steady_rotation_motion = true
				if(GlobalPlayerInput.left == true):
					if (GlobalPlayerInput.forward == true):
						diagonal_rot_total = deg_to_rad(-45)
						return
					if (GlobalPlayerInput.back == true):
						diagonal_rot_total = deg_to_rad(45)
						return
					diagonal_rot_total = 0
		StateEnum.RIGHT_ROLL:
			if(_steady_rotation_motion == false):
				_steady_rotation_motion = true
				if(GlobalPlayerInput.left == true):
					if (GlobalPlayerInput.forward == true):
						diagonal_rot_total = deg_to_rad(45)
						return
					if (GlobalPlayerInput.back == true):
						diagonal_rot_total = deg_to_rad(-45)
						return
					diagonal_rot_total = 0
		StateEnum.EVADE_FORWARD:
			if(_steady_rotation_motion == false):
				_steady_rotation_motion = true
				if(GlobalPlayerInput.forward == true):
					if (GlobalPlayerInput.right == true):
						diagonal_rot_total = deg_to_rad(-45)
						return
					if (GlobalPlayerInput.left == true):
						diagonal_rot_total = deg_to_rad(45)
						return
					diagonal_rot_total = 0
		StateEnum.EVADE_BACK:
			if(_steady_rotation_motion == false):
				_steady_rotation_motion = true
				if(GlobalPlayerInput.back == true):
					if (GlobalPlayerInput.right == true):
						diagonal_rot_total = deg_to_rad(45)
						return
					if (GlobalPlayerInput.left == true):
						diagonal_rot_total = deg_to_rad(-45)
						return
					diagonal_rot_total = 0
		StateEnum.EVADE_LEFT:
			if(_steady_rotation_motion == false):
				_steady_rotation_motion = true
				if(GlobalPlayerInput.left == true):
					if (GlobalPlayerInput.forward == true):
						diagonal_rot_total = deg_to_rad(-45)
						return
					if (GlobalPlayerInput.back == true):
						diagonal_rot_total = deg_to_rad(45)
						return
					diagonal_rot_total = 0
		StateEnum.EVADE_RIGHT:
			if(_steady_rotation_motion == false):
				_steady_rotation_motion = true
				if(GlobalPlayerInput.left == true):
					if (GlobalPlayerInput.forward == true):
						diagonal_rot_total = deg_to_rad(45)
						return
					if (GlobalPlayerInput.back == true):
						diagonal_rot_total = deg_to_rad(-45)
						return
					diagonal_rot_total = 0
		StateEnum.CROUCH_WALK:
			_steady_rotation_motion = false
			if(GlobalPlayerInput.forward == true):
				if (GlobalPlayerInput.right == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(-45)
					diagonal_rot_step = deg_to_rad(3)
				if (GlobalPlayerInput.left == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(+45)
					diagonal_rot_step = deg_to_rad(3)
		StateEnum.CROUCH_BACKWALK:
			_steady_rotation_motion = false
			if(GlobalPlayerInput.back == true):
				if (GlobalPlayerInput.right == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(+45)
					diagonal_rot_step = deg_to_rad(3)
				if (GlobalPlayerInput.left == true):
					_pass = 0
					_diagonal_rotation_target = deg_to_rad(-45)
					diagonal_rot_step = deg_to_rad(3)
				
		_:
			_steady_rotation_motion = false
			_pass = 0
			_diagonal_rotation_target = deg_to_rad(0)
			diagonal_rot_step = deg_to_rad(3)

	if (_steady_rotation_motion):
		return
	if (!is_equal_approx(_diagonal_rotation_target, diagonal_rot_total)):
		if (_diagonal_rotation_target > diagonal_rot_total):
			diagonal_rot_total = diagonal_rot_total + diagonal_rot_step
			_turned_once=true
			
		if (_diagonal_rotation_target < diagonal_rot_total):
			diagonal_rot_total = diagonal_rot_total - diagonal_rot_step
			if(_turned_once):
				diagonal_rot_total = _diagonal_rotation_target ##This is kind of fail safe incase things go wrong.
	else:
		_pass = 0


## Override animation to make character look around according to camera rotation
func _animation_override(delta):
	
	var _head_look_around : Vector2 = Vector2(char_body.rotation.x-camera_rotation.x, char_body.rotation.y-camera_rotation.y)
	

	_look_bone_rotation(delta, bone_array, _head_look_around)

	pass


func _look_bone_rotation(_delta, bone_ids : Array[int], rot_copy : Vector2):
	var _original_bone_transform : Array[Transform3D] = [Transform3D(),Transform3D(),Transform3D()]
	var _new_bone_transform : Array[Transform3D] = [Transform3D(),Transform3D(),Transform3D()]
	var _rot_val : Vector2 = rot_copy
	const _weights: Array[float] = [0.4,0.4,0.3]
	
	rot_copy.y = rot_copy.y - ((2*PI)* floor((rot_copy.y+(PI))/ (2*PI)))
	
		##Wrap-up rotation nicely to front 180 degree
	if (rot_copy.y > PI/2 and rot_copy.y < PI):
		_rot_val.y = PI - rot_copy.y ##VE PI nin KATLARI
	elif (rot_copy.y > -PI and rot_copy.y < -PI/2):
		_rot_val.y = -PI - rot_copy.y
	
	_rot_val.x = clampf(_rot_val.x + deg_to_rad(-10),deg_to_rad(-30),deg_to_rad(30))
	
	for bones in len(bone_ids): 
		
		if(bones!=0):
			_new_bone_transform[bones] = my_skeleton.get_bone_global_pose(my_skeleton.get_bone_parent(bone_ids[bones]))*my_skeleton.get_bone_pose(bone_ids[bones])
		else:
			_new_bone_transform[bones] = my_skeleton.get_bone_global_pose_no_override(bone_ids[bones])
		
		_new_bone_transform[bones].basis = Basis.from_euler(Vector3(_new_bone_transform[bones].basis.get_euler().x- _rot_val.x,
		_new_bone_transform[bones].basis.get_euler().y- _rot_val.y,
		_new_bone_transform[bones].basis.get_euler().z))
		
		my_skeleton.set_bone_global_pose_override(bone_ids[bones], _new_bone_transform[bones],_weights[bones], true)
		
	pass

static func delta_angle(current: float, target: float)-> float :
	
	var num : float  = repeat(target - current, 2*PI)
	if (num > PI):
		num = num - 2*PI
	
	return num;

static func repeat(t : float, length : float) -> float:
	return clamp(t-floor(t/length)*length, 0.0, length)
	

##aralık 3.14 ve - 3.14

static func rotate_toward (_current_rot: float, _target_rot : float, _speed : float) -> float:
	#print ("angle: ",rad_to_deg(abs(wrapf(_current_rot - _target_rot,0,2*PI))))
	#print ("target: ",rad_to_deg(_target_rot))
	#print ("current: ",rad_to_deg(_current_rot))
	if(abs(_current_rot - _target_rot) < PI):
		if(_current_rot<_target_rot):
			if(_current_rot + _speed < _target_rot):
				return _current_rot + _speed
			return _target_rot
		if(_current_rot>_target_rot):
			if(_current_rot - _speed > _target_rot):
				return _current_rot - _speed
			return _target_rot
	else:
		if(_current_rot - _target_rot< 0):
			if(abs(wrapf(_current_rot - _target_rot,0,2*PI)) < deg_to_rad(6)):
				return _target_rot
			if(abs(wrapf(_current_rot - _target_rot,0,2*PI)) > deg_to_rad(6)):
				return _current_rot - _speed
			return 0
		if(_current_rot - _target_rot> 0):
			if(abs(wrapf(_current_rot - _target_rot,0,2*PI)) < 2*PI - deg_to_rad(6)):
				return _current_rot + _speed
			if(abs(wrapf(_current_rot - _target_rot,0,2*PI)) > 2*PI - deg_to_rad(6)):
				return _target_rot
			return 0

	return _current_rot
