extends PopupPanel

onready var menu = get_node("/root/Node2D/menu")

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	pass


func _draw():
	pass
	
func toggle():
	if self.is_visible():
		self.hide()
	else:
		var pos = Vector2(menu.get_pos().x+301, menu.get_pos().y+50)
		self.set_pos(pos)
		print ("show")
		self.show()