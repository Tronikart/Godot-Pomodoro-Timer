extends Node

export var timer = 25
var count = timer*60

var start = false

export var break_timer = 5
var count_break = break_timer*60

var pom_count = 0
var break_time = false

func _ready():
	pass
##############################
## SETTERS AND GETTERS
##############################
# RESTART TIMER
func restart():
	count = timer*60
	
# START
func get_start():
	return start
	
func toggle_start():
	if start:
		start = false
	else:
		start = true
# COUNT 
func get_count():
	return count

# TIMER
func get_timer():
	return timer

func set_timer(p):
	timer = p
	count = timer*60

# BREAK TIMER
func get_break_timer():
	return break_timer

func set_break_timer(p):
	break_timer = p
	count_break = break_timer*60

# COUNT BREAK
func get_count_break():
	return count_break

# POM COUNT 
func set_pom(p):
	pom_count = p
	
func add_pom():
	pom_count += 1

func get_pom():
	return pom_count

# BREAK TIME
func get_break_time():
	return break_time

func change_break_time():
	if break_time:
		get_node("/root/Node2D/Info").update()
		get_node("/root/Node2D/messages").get_study()
		get_node("/root/Node2D/breakTime").clear()
		get_node("/root/Node2D/botBar").set_val(0)
		break_time = false
	else:
		get_node("/root/Node2D/Info").update()
		get_node("/root/Node2D/messages").get_break()
		get_node("/root/Node2D/breakTime").init()
		break_time = true

#######################
## UTILS
#######################

func toTime(p):
	var minutes = p/60
	var secs = p%60
	return (str(minutes).pad_zeros(2) + ":" + str(secs).pad_zeros(2))
