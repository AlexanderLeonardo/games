extends Area2D


func _ready():
	pass 


func _on_enemie2_body_entered(body):
	if body.get_name() == "Player":
		global._on_enemie_flyMan()
		queue_free()
