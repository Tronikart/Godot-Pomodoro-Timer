extends Button

onready var time = get_node("/root/Node2D/studyTime")

func _ready():
	self.set_text("reset")
	pass


func _pressed():
	time.restart()