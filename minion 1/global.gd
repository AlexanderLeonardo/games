extends Node2D

var score = 0

signal game_over
signal update_score
signal carrot_grabedd
signal carrot_grabedd_gold
signal bronze
signal enemie_springMan
signal enemie_flyMan
signal enemie_spikeMan
signal gold

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func score():
	score += 1000
	emit_signal("update_score", score)
	
func game_over():
	score = 0
	emit_signal("game_over", score)
	
func _on_carrot_grabedd():
	score += 500
	emit_signal("carrot_grabedd", score)
	
func _on_carrot_grabedd_gold():
	score += 2000
	emit_signal("carrot_grabedd_gold", score)
	
func _on_bronze():
	score += 200
	emit_signal("bronze", score)
	
func _on_gold():
	score += 600
	emit_signal("gold", score)
		
func _on_enemie_springMan():
	score -= 200
	emit_signal("enemie_springMan", score)
	
func _on_enemie_flyMan():
	score -= 500
	emit_signal("enemie_flyMan", score)
	
func _on_enemie_spikeMan():
	score -= 1000
	emit_signal("enemie_spikeMan", score)
	
