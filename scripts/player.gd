extends CharacterBody2D



const SPEED := 300.0
const JUMP_VELOCITY := -400.0
var falling := false
@onready var player_animation := $Sprite2D


func _physics_process(delta: float) -> void:

	if Input.is_action_just_pressed("Fall"):
		falling = true
	if not is_on_floor() and falling:
		velocity += get_gravity() * delta

	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
