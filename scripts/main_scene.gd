extends Node2D



@onready var happy_music := $Music/Happy_Music
@onready var danger_music := $Music/Danger_Music



func _process(_delta: float) -> void:

	if !Global_Player.falling:
		danger_music.stream_paused = true
	else:
		happy_music.stream_paused = true
		danger_music.stream_paused = false
