extends Node2D



@onready var enemy_animation := $Enemy_Animations
@onready var raycast_right := $RayCast_Right
@onready var raycast_left := $RayCast_Left
var enemy_direction := 1
var speed = randf_range(50,200)



func _ready() -> void:
	pass




func _process(delta: float) -> void:
	

	self.position.x += enemy_direction * speed * delta
	if raycast_right.is_colliding():
		enemy_direction = -1
	if raycast_left.is_colliding():
		enemy_direction = 1
	animation()



func animation():
	

	if speed >= 150:
		enemy_animation.speed_scale = 2
	elif speed >= 100 and speed < 150:
		enemy_animation.speed_scale = 1.5
	elif speed >= 50 and speed < 100:
		enemy_animation.speed_scale = 1	


	if enemy_direction == 1:
		enemy_animation.play("Right")

	if enemy_direction == -1:
		enemy_animation.play("Left")
	
