extends RichTextLabel

onready var controller = get_node("/root/Node2D/Controller")
onready var studyBar = get_node("/root/Node2D/topBar")
onready var breakBar = get_node("/root/Node2D/botBar")
onready var count = controller.get_count()

func restart():
	# If it was break time, change it back
	if controller.get_break_time():
		controller.change_break_time()
	else:
		pass
	# Update the timer
	count = controller.get_count()
	self.clear()
	# If it already started, just change the text
	# If it was running, pause it, reset the count and pause it
	if controller.get_start():
		controller.toggle_start()
		controller.set_pom(0)
		get_node("/root/Node2D/start").set_text("start")
		get_node("/root/Node2D/start").set_pos(Vector2(126, 286))
		self.add_text("Study time: " + controller.toTime(count) + "\n\nPress start to begin this study session")
	else:
		self.add_text("Study time: " + controller.toTime(count) + "\n\nPress start to begin this study session")
	# set the max value and the bar to full
	studyBar.set_max_val(controller.get_count())
	studyBar.set_val(controller.get_count())

func _ready():
	studyBar.set_max_val(count)
	self.add_text("Study time: " + controller.toTime(count) + "\n\nPress start to begin this study session")

func _on_Timer_timeout():
	# If theres no break time and it started
	if !controller.get_break_time() and controller.get_start():
		count -= 1
		# Modify progress bar
		studyBar.set_val(count)
		# Modify counter
		self.clear()
		self.add_text("Study time: " + controller.toTime(count))
		# Times out
		if count < 1:
			# Add one to the pom counter
			controller.add_pom()
			# Change the status of the break time
			controller.change_break_time()
			# Play pom done sound
			get_node("/root/Node2D/pomDone").play_sound()
			self.clear()
		else:
			pass
	else:
		pass

