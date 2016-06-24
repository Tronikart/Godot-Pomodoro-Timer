extends RichTextLabel

#var study_messages = load_file("res://text files/study.txt")
#var break_messages = load_file("res://text files/break.txt")

func _ready():
	var randomint = rand_range(0, study_messages.size()-1)
	randomize()
	self.add_text(str(study_messages[randi()%study_messages.size()]))
	pass 

func get_study():
	var randomint = rand_range(0, study_messages.size()-1)
	randomize()
	self.clear()

func get_break():
	var randomint = rand_range(0, break_messages.size()-1)
	randomize()
	self.clear()
	self.add_text(break_messages[randi()%break_messages.size()]) 
	
var study_messages = [
					'Study study!',
					'Study! Don\'t distract yourself',
					'Study study study',
					'Study time!',
					'I know you can do it',
					'Come on, study time',
					'STUDY DAMN IT',
					'Bet you\'ll shred that test',
					'Presentation? Test? Lab?\nYou can with all of them',
					'Nerd up!',
					'You\'re the best,\nand you know it',
					'Come on, now you\'ll\nget that topic'

]

var break_messages = [
					'You can get to be the best later,\ntime for a break',
					'Come on, take a\nbreak, it\'s time',
					'It\'s time for a break',
					'is2g that if you\nare not in a break',
					'Give yourself some\nlove and take a break',
					'Dude, time for a break',
					'If you take this break,\nyou\'ll get more next study time',
					'BREAK TIME',
					'Take a break\nbefore you go mad',
					'Go break',
					'BREAK. NOW.',
					'BREAK.',
					'If you go mad please go\nand take me to your killing spree'
]
