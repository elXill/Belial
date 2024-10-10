extends Camera3D

@export var target: Node3D
@export var look_target_address: String
var look_target : Node3D
var offset

# Called when the node enters the scene tree for the first time.
func _ready():
	offset = global_transform.origin
	look_target = get_node(look_target_address)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	call_deferred("_cam_rotation")
	pass

func _cam_rotation():
	global_transform.origin = offset+target.global_transform.origin
	global_transform = global_transform.looking_at(look_target.global_transform.origin, Vector3.UP)
