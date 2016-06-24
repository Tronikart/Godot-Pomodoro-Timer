extends Button

onready var panel = get_node("/root/Node2D/PopupPanel/pomTime")

func _ready():
	pass


func _pressed():
	panel.edit_timer(-1)
	