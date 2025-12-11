extends Node2D


@onready var enemy := preload("res://scenes/enemy.tscn")
@onready var enemy_spawn_timer := $Timer

func _on_timer_timeout() -> void:
	enemy_instance(Vector2(randi_range(-100,100),20))

func enemy_instance(pos):
	var instance = enemy.instantiate()
	instance.position = pos
	self.add_child(instance)	

func _ready() -> void:
	pass


