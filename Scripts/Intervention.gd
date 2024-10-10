extends Node

var pause:bool = false
var step:bool = false

func _unhandled_input(_event):
	
	if(Input.is_key_pressed(KEY_KP_5)):
		if(!pause):
			pause = true
			step = false
		else:
			pause = false
			
	if(Input.is_key_pressed(KEY_KP_6)):
			step = true
			pause = false

func _physics_process(delta):
	if(pause):
		get_tree().paused = true
	else:
		get_tree().paused = false
		
	if(step):
		step = false
		get_tree().paused = false
		get_tree().create_timer(float(delta),true,true,false).timeout.connect(_stop_for_single_step)

func _stop_for_single_step():
	get_tree().paused = true
	pause = true
