extends RichTextLabel

onready var controller = get_node("/root/Node2D/Controller")

func _ready():
	var pom_time = controller.get_timer()
	self.add_text(str(pom_time))
	

func edit_timer(p):
	if (controller.get_timer() + p > 0):
		var change = controller.get_timer() + p
		self.clear()
		controller.set_timer(change)
		self.add_text(str(controller.get_timer()))
	else:
		pass