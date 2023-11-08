extends AnimationTree

class_name AnimationTreeParameters

@export var char_ready : bool

@export var forward : bool
@export var back 	: bool
@export var left 	: bool
@export var right 	: bool

@export var sprint  : bool
@export var crouch	: bool

@export var immobile_rotation_left  	: bool
@export var immobile_rotation_right 	: bool
var frame_data : int


func _physics_process(_delta):
	frame_data = roundf(get("parameters/playback").get_current_play_position()*60)


