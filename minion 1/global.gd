extends Node2D

var score = 0

signal update_score
signal carrot_grabedd
signal carrot_grabedd_gold
signal bronze

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func score():
	score += 1000
	emit_signal("update_score", score)
	
func _on_carrot_grabedd():
	score += 500
	emit_signal("carrot_grabedd", score)
	
func _on_carrot_grabedd_gold():
	score += 2000
	emit_signal("carrot_grabedd_gold", score)
	
func _on_bronze():
	score += 200
	emit_signal("bronze", score)
	
