extends CharacterBody2D


@export var speed := 3000.0



func _ready() -> void:

	pass



func _physics_process(delta: float) -> void:

	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * speed * delta
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
