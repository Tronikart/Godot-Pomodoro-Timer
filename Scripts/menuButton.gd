extends Button

onready var menu = get_node("/root/Node2D/PopupPanel")

func _ready():
	pass

func _pressed():
	menu.toggle()