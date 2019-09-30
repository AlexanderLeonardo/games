extends Area2D



func _ready():
	pass


func _on_gold_body_entered(body):
	if body.get_name() == "Player":
		global._on_gold()
		queue_free()
