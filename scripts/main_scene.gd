extends Node2D


@onready var aww := $music/aww
@onready var noo := $music/noooo



func music_config():
	aww.stream_paused = true
	noo.playing = true
	
func _ready() -> void:
	ChudPlayer.fall.emit(music_config())
