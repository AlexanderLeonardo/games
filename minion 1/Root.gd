extends Node

signal new_game_clicked

var Gameplay = preload("res://Node2D.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func show_gameplay():
	var c =	get_child(0)
	remove_child(c)
	c.queue_free()
	var g = Gameplay.instance()
	add_child(g)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
