extends Control

func _ready():
	if Global.currentScore > Global.highScore :
		Global.highScore = Global.currentScore
	$HighScore.text = "High Score: " + str(Global.highScore)
	
func _process(delta):
	if Input.is_action_pressed("jump"):
		get_tree().change_scene_to_file("res://Levels/level.tscn")   
