extends RichTextLabel

var my_anim_player : AnimationPlayer
var frame : int = 0
var anim = "empty"
var length
var print_anim = "not initialized"
var c_c
var prior_transition: String

var transition_frame_count : int = 0
var transition_string
var anim_name : String = "none"
var prior_anim_name : String = "none"
var old_char
var old_cam
var transition_total_frame
var prior_position : Vector3 = Vector3(0,0,0)
var skeleton : Skeleton3D
var torso_bone
var ending_frame_disp

# Called when the node enters the scene tree for the first time.
func _ready():
	my_anim_player = get_node ("/root/Node3D/Character_Controller/Belial-AP/Belial_Godot/AnimationPlayer")
	c_c = get_node ("/root/Node3D/Character_Controller")
	
	
	my_anim_player.connect("current_animation_changed" , Callable(self,"anim_change"), 1)
	skeleton = get_node ("/root/Node3D/Character_Controller/Belial-AP/Belial_Godot/Belial_Godot_SemiConnectRig/Skeleton3D")
	torso_bone = skeleton.find_bone("DEF-spine")
	
	pass # Replace with function body.

#Called every frame. 'delta' is the elapsed time since the previous frame.
	
func anim_change(anim_name):
	frame = 0
	if(my_anim_player.blend_time == 0):
		frame=1

func get_pos():
	prior_position = c_c.char_body.global_position
	
func _physics_process(_delta):
	call_deferred("_write")
	call_deferred("get_pos")
	#print(my_anim_player.blend_time)
	#print(my_anim_player.blending)
	
	#if(my_anim_player.is_playing()):
		#print(roundf(my_anim_player.get_current_animation_position()*60))

func _write():
	transition_total_frame = my_anim_player.total_blend_frames
	transition_frame_count = my_anim_player.blend_frame
	
	##There are times anim_name doesn't exist, why?
	anim_name = my_anim_player.get_current_animation()
	if(anim_name != ''):
		print('x', anim_name)
		length = roundf(my_anim_player.get_animation(anim_name).length*60)
		anim_name = anim_name.get_slice("/", 1)
	else:
		anim_name = 'NULL'
	
	if(prior_anim_name == my_anim_player.get_current_animation()):
		frame = frame+1

	
	prior_anim_name = my_anim_player.get_current_animation()
	
	if (str(my_anim_player.ending_frame) == '0'):
		ending_frame_disp = ''
	else :
		ending_frame_disp = str(my_anim_player.ending_frame)
	
	if(my_anim_player.blending):
		transition_string = "(" + str(transition_frame_count) + "/" + str(transition_total_frame) + ") "
	else:
		transition_string = ""
	text = "FPS :" + str(Engine.get_frames_per_second()) + "\n" + \
	anim_name + "  " + transition_string + str(my_anim_player.current_frame) + "/" + str(my_anim_player.frame_count) + "\n"+ "\n" +\
	
	'[b]Transition Properties[/b]' + "\n"  + \
	"Blending: "  + str(my_anim_player.blending) + "\n"  + \
	'Blending Mode: ' + str(CCM.TransitionModeEnum.keys()[my_anim_player.blending_mode]) + ' ' + str(ending_frame_disp) + "\n" + \
	'Interruption Mode: ' + str(CCM.TransitionInterruptionEnum.keys()[my_anim_player.blending_interruption]) + "\n" + "\n" + \
	
	
	"State: " + str(CCM.StateEnum.keys()[my_anim_player.current_state]) + "\n" + \
	"Future State: " + str(CCM.StateEnum.keys()[my_anim_player.next_state]) + "\n" + \
	"Prior State: " +  str(CCM.StateEnum.keys()[my_anim_player.prior_state]) + "\n" + "\n" + \
	 
	"Mixer Applied Func: " + str(my_anim_player.find_animation) + "\n" + "\n" + \
	
	#"G_Rotation = " + str(rad_to_deg(c_c.char_body.rotation.y)) + " + " + str(c_c.diagonal_rot_total) + "\n" + \
	"forward = "  + str(GlobalPlayerInput.forward) + str(GlobalPlayerInput.input_memory[0]) + "\n" + \
	"back = "  + str(GlobalPlayerInput.back) + "\n" + \
	"left = "  + str(GlobalPlayerInput.left) + "\n" + \
	"right = "  + str(GlobalPlayerInput.right) + "\n" + \
	"sprint = "  + str(GlobalPlayerInput.sprint) + "\n" + \
	"crouch = "  + str(GlobalPlayerInput.crouch) + "\n" + "\n" + \
	
	"air = " + str(GlobalPlayerInput.mid_air) + "\n" +\
	"jump charge = " + str(c_c.jump_charge) + "\n" + \
	"jump velocity = " + str(c_c._jump_velocity) + "\n" +"\n" + \
	
	"root motion= " + str(my_anim_player.get_root_motion_position())+ "\n" + \
	"UnReg Root Motion = Last : " + str (my_anim_player.unregistered_root_motion_last) + ' / First :  ' + str (my_anim_player.unregistered_root_motion_first)+ "\n" + \
	"Torso Position = " + str (skeleton.get_bone_global_pose(torso_bone).origin - my_anim_player.get_root_motion_position())+ "\n" + "\n" + \
		
	"Character Position = " + str(c_c.char_body.global_position) + "\n" + \
	"Character Position Diff = " + str(c_c.char_body.global_position - prior_position) + "\n" + \
	"Gravity Velocity = " + str(c_c.gravity_velocity) + "\n" + \
	
	
	
	#"sprint timer= "  + str(c_c.state_machine.state_import.forward_tap_time) + "\n" + \
#
	#"Delta Cam-Char : " + str(rad_to_deg(c_c.immobile_rot_diff))+ "\n" + \
	#"Char Rot:" +  str(rad_to_deg(c_c.char_body.basis.get_euler().y)) + "\n" + \
	
	#"immobile_rot_char_y_0:" + str(rad_to_deg(c_c.immobile_rot_char_y)) + "\n" + \
	#"immobile_rot_diff_allthetime "+ str(rad_to_deg(c_c.immobile_rot_diff_allthetime)) + "\n" + \
	#
	#"\n" + \
	#"CHAR" + "\n" + \
	#"immobile_rot= "  + str(rad_to_deg(c_c.immobile_rot)) + "\n" + \
	#"diagonal_rot_total= "  + str(rad_to_deg(c_c.diagonal_rot_total)) + "\n" + \
	#"CHAR TOTAL= "  + str(rad_to_deg(c_c.immobile_rot + c_c.diagonal_rot_total)) + "\n" + \

	#"\n" + \
	#"CAMERA" + "\n" + \
	#"camera_rotation.y = " + str(rad_to_deg(c_c.camera_rotation.y)) + "\n" + \
	#"surplus_rotation_y= "  + str(rad_to_deg(c_c.surplus_rotation_y)) + "\n" + \
	#"immobile_rot= "  + str(rad_to_deg(-1*c_c.immobile_rot)) + "\n" + \
	#"CAMERA TOTAL-real= " + str(rad_to_deg(c_c.camera_pivot.basis.get_euler().y)) + "\n" + \
	#"CAMERA TOTAL= "  + str(rad_to_deg(c_c.camera_rotation.y + c_c.surplus_rotation_y - c_c.immobile_rot))+ "\n" + \
	
	"\n" + \
	"DIAGONAL" + "\n" + \
	"Diagonal rotation = " + str(rad_to_deg(c_c.diagonal_rot_total))
	
	print()
	

