extends RichTextLabel

onready var controller = get_node("/root/Node2D/Controller")
var cheat_message = ""
var pom_message = ""

func _ready():
	var poms = controller.get_pom()
	pom_message = "No full pomodoro done yet"
	self.add_text(pom_message)

func update():
	var poms = controller.get_pom()
	if poms > 0:
		pom_message = str(poms) + " poms done so far."
	else:
		pom_message = "No full pomodoro done yet"
	self.clear()
	self.add_text(pom_message)