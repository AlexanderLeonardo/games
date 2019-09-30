extends Area2D

func _ready():
	pass

func _on_enemie_body_entered(body):
	if body.get_name() == "Player":
		global._on_enemie_springMan()
		queue_free()
