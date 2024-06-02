extends Area2D

# Randomizing Obstacles
var bgList = ["Balloon1", "Balloon2", "Broom"]
var bgSpeed = 500
func _ready():
	randomize()  
	var currentBg = bgList[randi() % bgList.size()]
	$AnimatedSprite2D.animation = currentBg


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -=  bgSpeed * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
