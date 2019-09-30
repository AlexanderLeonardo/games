extends Area2D

func _ready():
	pass

func _on_carrot3_body_entered(body):
	if body.get_name() == "Player":
		global._on_carrot_grabedd()
		queue_free()
