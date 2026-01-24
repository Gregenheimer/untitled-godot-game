extends Node2D

@onready var raycast := $RayCast2D



func _process(delta: float) -> void:

	self.global_position += Vector2(0,300) * delta
	if raycast.is_colliding():
		self.queue_free()
		print("yo jit, ts collided")

	# elif raycast.is_colliding():
	# 	self.queue_free()
	# 	print("collide with guy")