extends CharacterBody2D


const SPEED = 5000.0


func handle_animation() -> void:
	
	if Input.is_action_just_pressed("Lmb"):
		$AnimatedSprite2D.play("shoot_laser")
	elif !$AnimatedSprite2D.is_playing():
		$AnimatedSprite2D.play("idle")


func _physics_process(delta: float) -> void:

	var direction := Input.get_axis("A", "D")
	if direction:
		velocity.x = direction * SPEED * delta
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	handle_animation()
	move_and_slide()
