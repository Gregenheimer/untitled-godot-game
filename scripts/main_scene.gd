extends Node2D


@onready var laser_bullet := preload("res://scenes/laser_bullet_scene.tscn")
@onready var enemy := preload("res://scenes/enemy_scene.tscn")
@onready var player := $CharacterBody2D
@onready var bullet_position



func _on_timer_timeout() -> void:

	enemy_instance(Vector2(randi_range(-100,100),36))



func enemy_instance(pos):

	var instance = enemy.instantiate()
	instance.position = pos
	self.add_child(instance)
	self.add_to_group("enemies")



func bullet_shoot(pos):

	var bullet = laser_bullet.instantiate()
	bullet.global_position = pos + Vector2(0,17)
	self.add_child(bullet)



func _physics_process(_delta: float) -> void:

	if Input.is_action_just_pressed("Lmb"):
		bullet_shoot(player.position)
