extends RichTextLabel

onready var controller = get_node("/root/Node2D/Controller")

func _ready():
	var break_time = controller.get_break_timer()
	self.add_text(str(break_time))
	

func edit_timer(p):
	if (controller.get_break_timer() + p > 0):
		var change = controller.get_break_timer() + p
		self.clear()
		controller.set_break_timer(change)
		self.add_text(str(change))
	else:
		pass