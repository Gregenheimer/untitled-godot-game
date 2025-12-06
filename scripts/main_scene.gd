extends Node2D


@onready var aww := $music/aww
@onready var noo := $music/noooo



func _process(_delta: float) -> void:
	if !ChudPlayer.falling:
		noo.stream_paused = true
	else:
		aww.stream_paused = true
		noo.stream_paused = false
