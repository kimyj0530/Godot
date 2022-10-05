extends Node2D



func _on_Pillar_body_entered(body):
	if body.name == "object":
		body.die()


func _on_coin_body_entered(body):
	pass # Replace with function body.
