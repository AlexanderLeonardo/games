extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	global.connect("update_score", self, "update_score")
	global.connect("carrot_grabedd", self, "carrot_grabedd")
	global.connect("carrot_grabedd_gold", self, "carrot_grabedd_gold")
	global.connect("bronze", self, "bronze")
	global.connect("gold", self, "gold")
	global.connect("game_over", self, "game_over")
	global.connect("enemie_springMan", self, "enemie_springMan")
	global.connect("enemie_flyMan", self, "enemie_flyMan")
	global.connect("enemie_spikeMan", self, "enemie_spikeMan")
	$score.text = "SCORE: " + "0"
	pass 


func update_score(s):
	$score.text = "SCORE: " + str(s)
	
func carrot_grabedd(s):
	$score.text = "SCORE: " + str(s)
	
func carrot_grabedd_gold(s):
	$score.text = "SCORE: " + str(s)
	
func bronze(s):
	$score.text = "SCORE: " + str(s)
	
func gold(s):
	$score.text = "SCORE: " + str(s)
	
func game_over(s):
	$score.text = "SCORE: " + str(s)
	
func enemie_springMan(s):
	$score.text = "SCORE: " + str(s)
	
func enemie_flyMan(s):
	$score.text = "SCORE: " + str(s)
	
func enemie_spikeMan(s):
	$score.text = "SCORE: " + str(s)
	
