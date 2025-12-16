extends Node2D


@onready var laser_bullet := preload("res://scenes/laser_bullet.tscn")
@onready var enemy := preload("res://scenes/enemy.tscn")
@onready var player := $Player



func _on_timer_timeout() -> void:

	enemy_instance(Vector2(randi_range(-100,100),35))



func enemy_instance(pos):

	var instance = enemy.instantiate()
	instance.position = pos
	self.add_child(instance)
	self.add_to_group("enemies")



func bullet_shoot(pos):

	var bullet = laser_bullet.instantiate()
	bullet.position = pos
	self.add_child(bullet)



func _physics_process(_delta: float) -> void:

	if Input.is_action_just_pressed("Shoot"):
		bullet_shoot(player.position)
		

