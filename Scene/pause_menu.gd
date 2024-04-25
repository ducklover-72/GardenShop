extends Control

@onready var pause_menu = $"."
var paused = false

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		PauseMenu()

func PauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
		
	paused =! paused
	



func _on_resume_pressed():
	PauseMenu()


func _on_quit_pressed():
	get_tree().quit()
