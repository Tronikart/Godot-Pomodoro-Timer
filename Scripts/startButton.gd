extends Button

onready var controller = get_node("/root/Node2D/Controller")

func _ready():
	pass

func _pressed():
	controller.toggle_start()
	self.set_text("")
	self.set_pos(Vector2(-1000, -1000))