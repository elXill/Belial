extends Node
class_name xx

##There is 2 frame latency between input and new state, which can be solved with 2x my_anim_tree.advance(0) which causes other problems
##Example; root motion values always being 0 get_root_motion_position() depending on place used in script,
##Example; causes a lag for set_bone_global_pose_no_override() function (1 or 2 frames), when used with conjunction of BoneAttachment3D and Marker3D.

var camera_pivot : Node3D
var my_anim_tree : AnimationTree = null
var char_body : Node3D
var my_anim_player : AnimationPlayer = null

var pivot_base_y : float = 0
var surplus_rotation_y : float
var mouse_dirty : bool = false
var mouse_xy : Vector2 = Vector2(0,0)
var sensitivity : float = 0.002
var camera_rotation : Vector3 = Vector3(0,0,0)
var diagonal_rot_step : float = 0
var diagonal_rot_total : float = 0
var surplus_cam_rot_vel: float = 0
var surplus_cam_rot_delta: float = 0
var immobile_rot_char_y: float = 0


var rotateable_motion_rotation : float = 0
var char_base_y : float = 0
var current_state : ANIM_STATES



var _bone_tips : Array[Marker3D] = [Marker3D.new(), Marker3D.new()]


var body_base_transform : Transform3D = Transform3D()
var body_rot_val : float = 0
var immobile_rot : float = 0
var immobile_rot_diff : float = 0
var immobile_rot_end : float = 0
var my_skeleton : Skeleton3D
var bone_array : Array[int] = [0,0,0]

var immobile_turn : bool = false
var immobile_turn_0 : bool = true
var carry_immobile_rot : bool = false
var immobile_rot_ended : bool = false
var immobile_rot_diff_allthetime

var debug_1
var debug_2
var debug_3

var x = 0

enum ANIM_STATES {
	STAND,
	FORWARD,
	BACK,
	LEFT,
	RIGHT,
	FORWARD_STOP,
	BACK_STOP,
	LEFT_STOP,
	RIGHT_STOP,
	FORWARD_STEP,
	BACK_STEP,
	LEFT_STEP,
	RIGHT_STEP,
	CHANGE_DIRECTION,
	STAND_COM_TURN_LEFT,
	STAND_COM_TURN_RIGHT
}

static var anim_state_dic : Dictionary = {
	"THBE_COM-Idle" : ANIM_STATES.STAND,
	"Looper" : ANIM_STATES.STAND,
	
	"THBE_COM-Run_StepA" : ANIM_STATES.FORWARD_STEP,
	"THBE_COM-Run_Start" : ANIM_STATES.FORWARD,
	"THBE-Run_Cycle_R" : ANIM_STATES.FORWARD,
	"THBE-Run_Cycle_L" : ANIM_STATES.FORWARD,
	"THBE_COM-Run_Stop" : ANIM_STATES.FORWARD_STOP,
	"THBE_COM-Run_StepB" : ANIM_STATES.FORWARD_STOP,
	
	"THBE_COM-BackRun_StepA" : ANIM_STATES.BACK_STEP,
	"THBE_COM-BackRun_Start" : ANIM_STATES.BACK,
	"THBE-BackRun_Cycle_R" : ANIM_STATES.BACK,
	"THBE-BackRun_Cycle_L" : ANIM_STATES.BACK,
	"THBE_COM-BackRun_Stop" : ANIM_STATES.BACK_STOP,
	"THBE_COM-BackRun_StepB" : ANIM_STATES.BACK_STOP,
	
	"THBE_COM-SSLeft_StepA" : ANIM_STATES.LEFT_STEP,
	"THBE_COM-SSLeft_Start" : ANIM_STATES.LEFT,
	"THBE-SSLeft_Cycle_R" : ANIM_STATES.LEFT,
	"THBE-SSLeft_Cycle_L" : ANIM_STATES.LEFT,
	"THBE_COM-SSLeft_Stop" : ANIM_STATES.LEFT_STOP,
	"THBE-COM-SSLeft_StepB" : ANIM_STATES.LEFT_STOP,
	
	"THBE_COM-SSRight_StepA" : ANIM_STATES.RIGHT_STEP,
	"THBE_COM-SSRight_Start" : ANIM_STATES.RIGHT,
	"THBE-SSRight_Cycle_R" : ANIM_STATES.RIGHT,
	"THBE-SSRight_Cycle_L" : ANIM_STATES.RIGHT,
	"THBE_COM-SSRight_Stop" : ANIM_STATES.RIGHT_STOP,
	"THBE_COM-SSRight_StepB" : ANIM_STATES.RIGHT_STOP,
	
	"THBE-CD_F_RT" : ANIM_STATES.FORWARD,
	"THBE-CD_F_LT" : ANIM_STATES.FORWARD,
	
	"THBE-CD_B_RT" : ANIM_STATES.CHANGE_DIRECTION,
	"THBE-CD_B_LT" : ANIM_STATES.CHANGE_DIRECTION,
	
	"THBE-CD_LT_F" : ANIM_STATES.LEFT,
	"THBE-CD_RT_F" : ANIM_STATES.RIGHT,
	
	"THBE_COM-StandTurn_LT" : ANIM_STATES.STAND_COM_TURN_LEFT,
	"THBE_COM-StandTurn_RT" : ANIM_STATES.STAND_COM_TURN_RIGHT
}

#Input
var forward : bool = false
var back : bool = false
var left : bool = false
var right : bool = false

func _ready():
	
	my_skeleton = get_node("../Belial_Godot_SemiConnectRig/Skeleton3D")
	my_anim_tree = get_node ("../AnimationTree") ## Gets animation player
	char_body = get_node ("../../../Belial")
	body_base_transform.basis = char_body.basis
	my_anim_tree.set("parameters/conditions/ready", true)
	my_anim_player = get_node("../AnimationPlayer")
	camera_pivot = get_node("../../CameraPivot")
	pivot_base_y = camera_pivot.basis.get_euler().y
	
	_bone_tips[0] = get_node("../Belial_Godot_SemiConnectRig/Skeleton3D/BoneAttachment_Neck/Neck_Mark")
	_bone_tips[1] = get_node("../Belial_Godot_SemiConnectRig/Skeleton3D/BoneAttachment_Head/Head_Mark")
	
	bone_array[0] = my_skeleton.find_bone("DEF-spine.003")
	bone_array[1] = my_skeleton.find_bone("DEF-neck")
	bone_array[2] = my_skeleton.find_bone("DEF-head")
	
	camera_rotation = char_body.basis.get_euler()
	immobile_rot_end= char_body.basis.get_euler().y
	
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _physics_process(delta):
	
	#Get Current State to use in script
	current_state = anim_state_dic[my_anim_tree.get("parameters/playback").get_current_node()]
	

	
	x = x+1
	print(x)
	
	_camera_rotation(delta)
	_input_process(delta)
	_state_logic(delta, current_state)
	
	#_immobile_rotation()
	#_mobile_rotation(delta)
	#_character_rotation(delta) ##??
	#diagonal_rot_step = _diagonal_rotation_calc()


	#_root_motion()

	#_animation_override(delta)
	immobile_rot_diff_allthetime = delta_angle(immobile_rot_char_y, camera_rotation.y)
	_apply_rotations(delta)
	
	

func _state_logic(delta, state : ANIM_STATES):
	match state:
		##Immobile; standing or turning
		ANIM_STATES.STAND, ANIM_STATES.STAND_COM_TURN_LEFT,ANIM_STATES.STAND_COM_TURN_RIGHT:
			_immobile_rotation()
			pass
		##Moving forward
		ANIM_STATES.FORWARD , ANIM_STATES.FORWARD_STEP, ANIM_STATES.FORWARD_STOP:
			_rotateable_motion()
			#_diagonal_rotation_calc()
			_root_motion()
		ANIM_STATES.BACK , ANIM_STATES.BACK_STEP, ANIM_STATES.BACK_STOP:
			_rotateable_motion()
			_diagonal_rotation_calc()
			_root_motion()
		ANIM_STATES.RIGHT , ANIM_STATES.RIGHT_STEP, ANIM_STATES.RIGHT_STOP:
			_rotateable_motion()
			_diagonal_rotation_calc()
			_root_motion()
		ANIM_STATES.LEFT , ANIM_STATES.LEFT_STEP, ANIM_STATES.LEFT_STOP:
			_rotateable_motion()
			_diagonal_rotation_calc()
			_root_motion()
			

	
func _immobile_rotation():
	
	
	immobile_rot_diff = delta_angle(immobile_rot_char_y, camera_rotation.y)
	
	#If turnable states and diff > 70 --> immobile turn = true
	if(current_state == ANIM_STATES.STAND or \
	current_state == ANIM_STATES.STAND_COM_TURN_LEFT or \
	current_state == ANIM_STATES.STAND_COM_TURN_RIGHT ):
		
		immobile_rot_ended = false
		
		if (immobile_rot_diff>deg_to_rad(70)):
			immobile_turn = true
			my_anim_tree.set("parameters/conditions/immobile_rotation_left", true)
			my_anim_tree.set("parameters/conditions/immobile_rotation_right", false)
			my_anim_tree.set("parameters/conditions/not_immobile_rotation_left", false)
			my_anim_tree.set("parameters/conditions/not_immobile_rotation_right", true)

		if (immobile_rot_diff<deg_to_rad(-70)):
			immobile_turn = true
			my_anim_tree.set("parameters/conditions/immobile_rotation_right", true)
			my_anim_tree.set("parameters/conditions/immobile_rotation_left", false)
			my_anim_tree.set("parameters/conditions/not_immobile_rotation_left", true)
			my_anim_tree.set("parameters/conditions/not_immobile_rotation_right", false)

		if(immobile_turn == true):
			if(immobile_rot_diff > 0):
				immobile_rot = immobile_rot + deg_to_rad(6)
				if (immobile_rot > immobile_rot_char_y + immobile_rot_diff):
					immobile_rot = immobile_rot_char_y + immobile_rot_diff
					immobile_turn_0 = false
					

			if(immobile_rot_diff < 0):
				immobile_rot = immobile_rot - deg_to_rad(6)
				if (immobile_rot < immobile_rot_char_y + immobile_rot_diff):
					immobile_rot = immobile_rot_char_y + immobile_rot_diff
					immobile_turn_0 = false
					

		if(immobile_turn and !immobile_turn_0):
			immobile_rot_char_y = immobile_rot
			immobile_turn = false
			immobile_turn_0 = true
			carry_immobile_rot = false
			my_anim_tree.set("parameters/conditions/immobile_rotation_left", false)
			my_anim_tree.set("parameters/conditions/immobile_rotation_right", false)
			my_anim_tree.set("parameters/conditions/not_immobile_rotation_left", true)
			my_anim_tree.set("parameters/conditions/not_immobile_rotation_right", true)

#		deg_to_rad(5) basta yavas sone yavas yavas ivme kazandır


func _rotateable_motion():
	
		debug_1 = ("immobile_rot			: " + str(rad_to_deg(immobile_rot_diff)))
		debug_2 = ("immobile_rot_char_y	: " + str(rad_to_deg(immobile_rot_char_y)))
		print(debug_1)
		print(debug_2)
		
		
		
		#immobile_rot_diff = delta_angle(immobile_rot_char_y, camera_rotation.y)
		immobile_rot = rotate_toward(char_body.basis.get_euler().y,camera_rotation.y, deg_to_rad(6))
		print("charbody y " , char_body.basis.get_euler().y)
		print("camroty :", camera_rotation.y )
		print("immobile_rot - mobile:" , immobile_rot)
		#movetowards tadında birşey
		
		

			
#		my_anim_tree.set("parameters/conditions/immobile_rotation_left", false)
#		my_anim_tree.set("parameters/conditions/immobile_rotation_right", false)
#		my_anim_tree.set("parameters/conditions/not_immobile_rotation_left", true)
#		my_anim_tree.set("parameters/conditions/not_immobile_rotation_right", true)
	
#		if(immobile_rot_diff > 0):
#			immobile_rot = immobile_rot + deg_to_rad(6) 
#			if (immobile_rot > immobile_rot_char_y + immobile_rot_diff):
#				immobile_rot = immobile_rot_char_y + immobile_rot_diff
#
#		if(immobile_rot_diff < 0):
#			immobile_rot = immobile_rot - deg_to_rad(6)
#			if (immobile_rot < immobile_rot_char_y + immobile_rot_diff):
#				immobile_rot = immobile_rot_char_y + immobile_rot_diff
					


func _apply_rotations(delta):
	##Apply character rotation

	char_body.basis = Basis.from_euler(Vector3(0.0, immobile_rot+ rotateable_motion_rotation, 0.0))
	
	
	##Apply mouse rotation
	if(mouse_dirty):
		mouse_dirty= false

		_surplus_rotation_calc_add(delta)
	
	_surplus_rotation_calc_sub(delta)

	
	camera_pivot.basis = Basis.from_euler(Vector3( \
	camera_rotation.x,  \
	camera_rotation.y + surplus_rotation_y - immobile_rot -rotateable_motion_rotation, \
	0))
#	print("Char Rot: ", rad_to_deg(char_body.basis.get_euler().y))
#	print("camy:" , rad_to_deg(camera_rotation.y))
	




func _root_motion():
	char_body.position += my_anim_tree.get_root_motion_position().rotated(Vector3.UP ,char_body.rotation.y)

func _input_process(_delta):
	if forward == true:
		my_anim_tree.set("parameters/conditions/forward", true)
		my_anim_tree.set("parameters/conditions/not_forward", false)
	else :
		my_anim_tree.set("parameters/conditions/forward", false)
		my_anim_tree.set("parameters/conditions/not_forward", true)
	if back == true:
		my_anim_tree.set("parameters/conditions/back", true)
		my_anim_tree.set("parameters/conditions/not_back", false)
	else :
		my_anim_tree.set("parameters/conditions/back", false)
		my_anim_tree.set("parameters/conditions/not_back", true)
	if left == true:
		my_anim_tree.set("parameters/conditions/left", true)
		my_anim_tree.set("parameters/conditions/not_left", false)
	else :
		my_anim_tree.set("parameters/conditions/left", false)
		my_anim_tree.set("parameters/conditions/not_left", true)
	if right == true:
		my_anim_tree.set("parameters/conditions/right", true)
		my_anim_tree.set("parameters/conditions/not_right", false)
	else :
		my_anim_tree.set("parameters/conditions/right", false)
		my_anim_tree.set("parameters/conditions/not_right", true)

func _unhandled_input(event):
	if Input.is_action_pressed("Forward"):
		forward = true		
	else:
		forward = false
	if Input.is_action_pressed("Back"):
		back = true
	else:
		back = false
	if Input.is_action_pressed("Left"):
		left = true
	else:
		left = false
	if Input.is_action_pressed("Right"):
		right = true
	else:
		right = false

	if event is InputEventMouseMotion:
		mouse_dirty = true
		mouse_xy = Vector2(event.relative.x, event.relative.y)
	if Input.is_action_just_pressed("ui_cancel"):
		if(Input.mouse_mode == Input.MOUSE_MODE_VISIBLE):
			get_tree().quit()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if Input.is_action_just_pressed("ui_accept"):
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _camera_rotation(delta):
#Mause Rotation
	
	if(mouse_dirty):
		
		
	#camera_rotation.x goes to
		camera_rotation.x = camera_rotation.x + (mouse_xy.y*sensitivity/5)
		camera_rotation.x = clampf(camera_rotation.x, -PI/3, PI/3)
		
		
		camera_rotation.y = camera_rotation.y + (-mouse_xy.x*sensitivity)
		
		
		camera_rotation.y = camera_rotation.y - ((2*PI)* floor((camera_rotation.y+(PI))/ (2*PI)))



	


	#Mause Input of Surplus Y Rotation 
		surplus_rotation_y = surplus_rotation_y + mouse_xy.x*sensitivity/2



func _character_rotation(_delta):
#Diagonal Rotation
	char_body.basis = Basis.from_euler(Vector3		\
	(char_body.basis.get_euler().x, char_body.basis.get_euler().y + deg_to_rad(diagonal_rot_step) , char_body.basis.get_euler().z))


func _surplus_rotation_calc_add(delta):
#Tracking speed
	if (surplus_rotation_y/PI <0.2):
		if(surplus_cam_rot_vel<delta*8):
			surplus_cam_rot_vel = surplus_cam_rot_vel + delta
	if (surplus_rotation_y/PI >0.8):
		if(surplus_cam_rot_vel>delta*8):
			surplus_cam_rot_vel = surplus_cam_rot_vel - delta

func _surplus_rotation_calc_sub(delta):
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

func _diagonal_rotation_calc():
	var _diagonal_rotation_target : float = 0
	
	if((current_state == ANIM_STATES.FORWARD) 
	or (current_state == ANIM_STATES.BACK)):
		if ((forward == true) or (back == true)):
			if (right == true):
				_diagonal_rotation_target = -45
			if (left == true):
				_diagonal_rotation_target = 45
	
	if((current_state == ANIM_STATES.LEFT) 
	or (current_state == ANIM_STATES.RIGHT)):
		if ((forward == true) or (back == true)):
			if (right == true):
				_diagonal_rotation_target = -45
			if (left == true):
				_diagonal_rotation_target = +45

	
	## Bu iş tamamdır sadece dönme değeri için daha güzel bir fonksiyon bul
	if (_diagonal_rotation_target > diagonal_rot_total):
		diagonal_rot_step = 3
		diagonal_rot_total = diagonal_rot_total + diagonal_rot_step
		return diagonal_rot_step
		
	if (_diagonal_rotation_target < diagonal_rot_total):
		diagonal_rot_step = 3
		diagonal_rot_total = diagonal_rot_total - diagonal_rot_step
		return -diagonal_rot_step
		
	return 0



func _animation_override(delta):
	
	var _original_bone_transforms : Array[Transform3D] = [Transform3D(),Transform3D(),Transform3D()]
	var _head_look_around : Vector2 = Vector2(char_body.rotation.x-camera_rotation.x, char_body.rotation.y-camera_rotation.y)
	

	##Head, Neck, Torso
	_look_bone_rotation(delta, bone_array, _head_look_around)

	
	#print("head euler2 = " + str(_end_bone_transforms[0].basis.get_euler()))
	pass


	
func _look_bone_rotation(_delta, bone_ids : Array[int], rot_copy : Vector2):
	var _original_bone_transform : Array[Transform3D] = [Transform3D(),Transform3D(),Transform3D()]
	var _new_bone_transform : Array[Transform3D] = [Transform3D(),Transform3D(),Transform3D()]
	var _rot_val : Vector2 = rot_copy
	const _weights: Array[float] = [0.3,0.5,1]
	
	print("Head look Y RAW:" , rad_to_deg(_rot_val.y))
	print("body:", rad_to_deg(char_body.rotation.y))
	
	rot_copy.y = rot_copy.y - ((2*PI)* floor(camera_rotation.y / (2*PI)))
	
		##Wrap-up rotation nicely to front 180 degree
	if (rot_copy.y > PI/2 and rot_copy.y < PI):
		_rot_val.y = PI - rot_copy.y
	elif (rot_copy.y > -PI and rot_copy.y < -PI/2):
		_rot_val.y = -PI - rot_copy.y
	elif(rot_copy.y > PI or rot_copy.y < -PI):
		_rot_val.y = 0
	
	print("Head look Y:" , rad_to_deg(_rot_val.y))

	_rot_val.x = clampf(_rot_val.x + deg_to_rad(-5),deg_to_rad(-30),deg_to_rad(30))
	
		#Set new bone rotations to torso, neck and head, according to mouse look
	for bones in len(bone_ids):
		
		if(bones!=0):
			#_new_bone_transform[bones].origin =  _bone_tips[bones-1].global_transform.origin - char_body.position
			_new_bone_transform[bones] = my_skeleton.get_bone_global_pose_no_override(bone_ids[bones])
			
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
	print ("angle: ",rad_to_deg(abs(_current_rot - _target_rot)))
	print ("target: ",rad_to_deg(_target_rot))
	print ("current: ",rad_to_deg(_current_rot))
	if(abs(_current_rot - _target_rot) < PI):
		if(_current_rot<_target_rot):
			if(_current_rot + _speed < _target_rot):
				return _current_rot + _speed
			return _target_rot
		if(_current_rot>_target_rot):
			if(_current_rot - _speed > _target_rot):
				return _current_rot - _speed
			return _target_rot
	#fast turn at 180
	else:
		if(abs(wrapf(_current_rot - _target_rot,0,2*PI)) < deg_to_rad(6)):
			if(_current_rot + _speed > _target_rot):
				return _current_rot - _speed
			return _target_rot
		if(_current_rot>_target_rot):
			if(_current_rot - _speed < _target_rot):
				return _current_rot + _speed
			return _target_rot
	#slow turn at 180
		else:
			##burası tamam sağdan dönüş düzgün
			if(_current_rot<_target_rot):
				if(_current_rot + _speed > _target_rot):
					return _target_rot
				return _current_rot - _speed
			##burası yalan soldan dönüş yanlış
			if(_current_rot>_target_rot):
				if(_current_rot - _speed < _target_rot):
					return _target_rot
				return _current_rot + _speed

	return _current_rot
