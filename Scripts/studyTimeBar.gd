extends ProgressBar

func _ready():
	self.set_value(get_node("/root/Node2D/Controller").get_count())
	
func _process(delta):
	pass

func set_val(p):
	self.set_value(p)
	
func set_max_val(p):
	self.set_max(p)
	