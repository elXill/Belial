extends SpringArm3D

@export var parent_adress : String

# Called when the node enters the scene tree for the first time.
func _ready():
	call_deferred("_parent")
	pass # Replace with function body.

func _parent():
	reparent(get_node(parent_adress))
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
