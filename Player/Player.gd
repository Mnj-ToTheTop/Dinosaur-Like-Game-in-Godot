extends CharacterBody2D

# Constants in the code
const GRAVITY = 10
const JUMP_SPEED = -425

# Physics of the movement
func _physics_process(delta):
	velocity.y += GRAVITY
	
	# Changing the Animation
	if is_on_floor():
		$AnimatedSprite2D.play("Walk")
	else:
		$AnimatedSprite2D.play("Jump")
			 
	# Jumping of the Cat.
	if Input.is_action_just_pressed("jump") and is_on_floor() :
		velocity.y = JUMP_SPEED
		$JumpSound.play()
	move_and_slide()
	
func endgames():
	get_tree().change_scene_to_file("res://TitleScreen//title_screen.tscn")
	
