extends Area2D

# Randomizing Obstacles
var obstacleList = ["Couch", "Family", "Kitten", "Maru", "Pile", "Pizza", "Sloth"]
var obsspeed = randi_range(300, 400)
func _ready():
	randomize()  
	var currentObstacle = obstacleList[randi() % obstacleList.size()]
	$AnimatedSprite2D.animation = currentObstacle
	
func _process(delta):
	position.x -=  obsspeed * delta

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func _on_body_entered(body):
	body.endgames()                
