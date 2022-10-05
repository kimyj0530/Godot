extends RigidBody2D


export var velocidad = 1
var is_alive = true

func flap(state: Physics2DDirectBodyState):
	state.linear_velocity = Vector2.UP * velocidad
	$AnimatedSprite.look_at($Po1.global_position)
	
func _integrate_forces(state: Physics2DDirectBodyState) -> void:
	if state.linear_velocity.y > velocidad * 0.5:
		$AnimatedSprite.rotation = lerp_angle($AnimatedSprite.rotation,$Po2.position.normalized().angle(), 0.1)
	if not is_alive:
		return 
	if Input.is_action_just_pressed("flap"):
		flap(state)
