extends Area2D

func _ready():
	pass

func _on_bronze_1_body_entered(body):
	if body.get_name() == "Player":
		global._on_bronze()
		queue_free()
