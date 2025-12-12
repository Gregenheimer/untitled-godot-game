extends CharacterBody2D



@export var player_speed := 3000.0



func _physics_process(delta: float) -> void:


	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * player_speed * delta
	else:
		velocity.x = move_toward(velocity.x, 0, player_speed)

	move_and_slide()