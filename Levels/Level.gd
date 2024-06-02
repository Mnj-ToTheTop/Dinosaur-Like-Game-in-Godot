extends Node

const OBSTACLE = preload("res://Obstacles/Obstacle.tscn")
const BG = preload("res://Background/background.tscn")
const G1 = preload("res://Foreground/grass1.tscn")
const G2 = preload("res://Foreground/grass2.tscn")
const G3 = preload("res://Foreground/grass3.tscn")

func _ready():
	Global.currentScore = 0
	
func _on_timer_timeout():
	var obstacle = OBSTACLE.instantiate()
	add_child(obstacle)
	$Timer.wait_time = randf_range(1,3)


func _on_score_timer_timeout():
	Global.currentScore += 1
	
func _process(delta):
	$Label.text = "SCORE: " + str(Global.currentScore)


func _on_bg_timer_timeout():
	var bg = BG.instantiate()
	add_child(bg)
	$Timer.wait_time = randf_range(4,8)
	


func _on_grass_1_timer_timeout():
	var g1 = G1.instantiate()
	add_child(g1)
	
func _on_grass_2_timer_timeout():
	var g2 = G2.instantiate()
	add_child(g2)
	
func _on_grass_3_timer_timeout():
	var g3 = G3.instantiate()
	add_child(g3)
