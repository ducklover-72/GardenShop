extends CharacterBody2D

@onready var animation = $AnimatedSprite2D

var walk_speed = 4
#josiah fixed this code. >:)

func _ready():
	animation.play("front_idle")

func _process(delta):
	var direction = Input.get_vector('left','right','up','down')
	position += direction * walk_speed
	move_and_slide()
	
	if Engine.time_scale == 1:
		walk_speed = 4
	else: 
		walk_speed = 0
	
