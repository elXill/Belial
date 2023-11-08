extends Label

var my_anim_player : AnimationPlayer
var my_anim_tree : AnimationTree
var my_animation_node : AnimationNode 
var my_state_machine_playback : AnimationNodeStateMachinePlayback
var frame : int = 0
var anim = "empty"
var animLib : AnimationLibrary
var length
var print_anim = "not initialized"
var c_c
var prior_transition: String

var transition_frame_count : int = 0
var transition : bool = false
var anim_name : String = "none"
var prior_anim_name : String = "none"
var old_char
var old_cam


# Called when the node enters the scene tree for the first time.
func _ready():
	my_anim_player = get_node ("/root/Node3D/Belial/Belial_Godot/AnimationPlayer")
	my_anim_tree = get_node ("/root/Node3D/Belial/Belial_Godot/AnimationTree")
	c_c = get_node ("/root/Node3D/Belial/Belial_Godot/Node")
	animLib = preload("res://Belial/Belial Imports/BE_Anim.glb")
	my_state_machine_playback = my_anim_tree.get("parameters/playback")
	my_anim_tree.animation_started.connect(_st)
	my_anim_player.get_current_animation()
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
	
func _physics_process(_delta):
	#my_anim_tree.
	call_deferred("_write")
	print(roundf(my_state_machine_playback.get_current_play_position()*60))
	
func _write():
	
	if(my_state_machine_playback.get_fading_from_node() != ""):
		if(my_state_machine_playback.get_fading_from_node() == prior_transition):
			transition_frame_count = transition_frame_count+1
		else:
			transition_frame_count = 0
	else:
		transition_frame_count = 0
		
	prior_transition = my_state_machine_playback.get_fading_from_node()
	print(my_state_machine_playback.get_fading_from_node())

	#transition_frame_count = IsTraveling(this AnimationNodeStateMachinePlayback @this)
	anim_name = my_anim_tree.get("parameters/playback").get_current_node()
	
	if(anim_name != "none"):
		if(anim_name == "Looper"):
			length=0
		else:
			length = roundf(animLib.get_animation(anim_name).length*60)
			if(prior_anim_name == my_anim_tree.get("parameters/playback").get_current_node()):
				frame = frame+1
			else:
				frame = 0
	
	prior_anim_name = my_anim_tree.get("parameters/playback").get_current_node()
	
	text = "FPS :" + str(Engine.get_frames_per_second()) + "\n" + \
	anim_name + "  (" + str(transition_frame_count) + ") / " + str(frame) + "/" + str(length) + "\n" + \
	 

	"G_Rotation = " + str(rad_to_deg(c_c.char_body.rotation.y)) + " + " + str(c_c.diagonal_rot_total) + "\n" + \
	"foward = "  + str(c_c.forward) + "\n" + \
	"back = "  + str(c_c.back) + "\n" + \
	"left = "  + str(c_c.left) + "\n" + \
	"right = "  + str(c_c.right) + "\n" + \
	"sprint = "  + str(c_c.sprint) + "\n" + \
	"crouch = "  + str(c_c.crouch) + "\n" + \
	"sprint timer= "  + str(c_c.forward_tap_time) + "\n" + \

	"Delta Cam-Char : " + str(rad_to_deg(c_c.immobile_rot_diff))+ "\n" + \
	"Char Rot:" +  str(rad_to_deg(c_c.char_body.basis.get_euler().y)) + "\n" + \
	
	"immobile_rot_char_y_0:" + str(rad_to_deg(c_c.immobile_rot_char_y)) + "\n" + \
	"immobile_rot_diff_allthetime "+ str(rad_to_deg(c_c.immobile_rot_diff_allthetime)) + "\n" + \
	
	"\n" + \
	"CHAR" + "\n" + \
	"immobile_rot= "  + str(rad_to_deg(c_c.immobile_rot)) + "\n" + \
	"diagonal_rot_total= "  + str(rad_to_deg(c_c.diagonal_rot_total)) + "\n" + \
	"CHAR TOTAL= "  + str(rad_to_deg(c_c.immobile_rot + c_c.diagonal_rot_total)) + "\n" + \

	"\n" + \
	"CAMERA" + "\n" + \
	"camera_rotation.y = " + str(rad_to_deg(c_c.camera_rotation.y)) + "\n" + \
	"surplus_rotation_y= "  + str(rad_to_deg(c_c.surplus_rotation_y)) + "\n" + \
	"immobile_rot= "  + str(rad_to_deg(-1*c_c.immobile_rot)) + "\n" + \
	"CAMERA TOTAL-real= " + str(rad_to_deg(c_c.camera_pivot.basis.get_euler().y)) + "\n" + \
	"CAMERA TOTAL= "  + str(rad_to_deg(c_c.camera_rotation.y + c_c.surplus_rotation_y - c_c.immobile_rot))+ "\n" + \
	
	"\n" + \
	"DIAGONAL" + "\n" + \
	"Diagonal rotation = " + str(rad_to_deg(c_c.diagonal_rot_total))
	
	
	#print(text)

func _st(string):
	anim = string

	
#func _end(string):
#	print("End")
#	transition = true
