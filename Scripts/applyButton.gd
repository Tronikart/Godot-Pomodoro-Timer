extends Button

onready var time = get_node("/root/Node2D/studyTime")

func _ready():
	pass


func _pressed():
	time.restart()
	