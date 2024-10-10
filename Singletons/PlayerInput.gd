extends Node
class_name PlayerInput

var input_subframe : int = 0
var mouse_dirty : bool = false
var mouse_xy : Vector2 = Vector2(0,0)
var forward_tap_time : int = 0
const INPUT_BUFFER : int = 3

var char_ready	: bool
var forward 	: bool
var forward_relased 	:bool
var back 		: bool
var left 		: bool
var right 		: bool
var crouch 		: bool
var crouch_just	: bool
var sprint 		: bool
var immobile_rotation_left 		: bool
var immobile_rotation_right 	: bool
var input_memory : PackedInt32Array

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS
	input_memory.resize(7) 

func _physics_process(delta):
	forward_tap_time = forward_tap_time+1
	input_memory[0] = input_memory[0] + 1 
	if(forward_relased and INPUT_BUFFER<input_memory[0]):
		forward = false
		sprint = false

func _process(delta):
	input_subframe = input_subframe+1


##Get Inputs
func _input(event):
	if Input.is_action_pressed("Forward"):
		forward = true
		forward_relased = false
	if Input.is_action_just_released("Forward"):
		forward_relased = true
		input_memory[0] = 0

	if Input.is_action_just_pressed("Forward"):
		if forward_tap_time < 15 :
			sprint = true
		forward_tap_time = 0
	
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
	if Input.is_action_pressed("Crouch"):
		crouch = true
	else:
		crouch = false
	if Input.is_action_just_pressed("Crouch"):
		crouch_just = true
	else:
		crouch_just = false
		
	if event is InputEventMouseMotion:
		mouse_dirty = true
		mouse_xy = Vector2(event.relative.x, event.relative.y)
	if Input.is_action_just_pressed("ui_cancel"):
		if(Input.mouse_mode == Input.MOUSE_MODE_VISIBLE):
			get_tree().quit()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if Input.is_action_just_pressed("ui_accept"):
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
