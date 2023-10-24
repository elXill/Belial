extends Node


func _input(_event):
	
	if(Input.is_key_pressed(KEY_KP_5)):
		if(get_tree().paused == false):
			get_tree().paused = true
		else:
			get_tree().paused = false
			
	if(Input.is_key_pressed(KEY_KP_6)):
			get_tree().paused = false
			get_tree().create_timer(float(1.0/60.0),true,true,false).timeout.connect(_stop_for_single_step)

func _stop_for_single_step():
	get_tree().paused = true
