
extends Button

onready var panel = get_node("/root/Node2D/PopupPanel/breakTime")

func _ready():
	pass


func _pressed():
	panel.edit_timer(1)