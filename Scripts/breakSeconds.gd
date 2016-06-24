extends RichTextLabel

onready var controller = get_node("/root/Node2D/Controller")
onready var breakBar = get_node("/root/Node2D/botBar")
onready var break_count = controller.get_count_break()

func _ready():
	pass
	
# get the time running
func init():
	break_count = controller.get_count_break()
	breakBar.set_max_val(break_count)
	self.add_text("Break time: " + controller.toTime(break_count))
	
func _on_Timer_timeout():
	# If its break time
	if controller.get_break_time():
		break_count -= 1
		# Updating the progress bar and timer
		breakBar.set_val(break_count)
		self.clear()
		self.add_text("Break time: " + controller.toTime(break_count))
		# If break is done
		if break_count < 1:
			# Change the status of the break time
			controller.change_break_time()
			
	else:
		pass