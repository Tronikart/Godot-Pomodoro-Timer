extends ProgressBar

onready var controller = get_node("/root/Node2D/Controller")

func _ready():
	self.set_value(0)
	
func _process(delta):
	pass

func set_val(p):
	self.set_value(p)
	
func set_max_val(p):
	self.set_max(p)