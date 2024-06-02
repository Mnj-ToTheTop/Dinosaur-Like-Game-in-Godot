extends Area2D

var fgList = ["Grass1", "Grass2", "Leaf1", "Leaf2", "Leaf3", "leaf4"]
var fgSpeed = 500
func _ready():
	randomize()  
	var currentFg = fgList[randi() % fgList.size()]
	$AnimatedSprite2D.animation = currentFg


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -=  fgSpeed * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
