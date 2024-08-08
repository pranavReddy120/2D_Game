extends Node2D

const enemy = preload("res://Scenes/enemy.tscn")

func enemy_creator():
	randomize()
	

func _on_timer_timeout():
	var rand_x = randi_range(-190,190)
	var rand_y = randi_range(-105,105)
	var enemy2 = enemy.instantiate()
	get_parent().add_child(enemy2)
	enemy2.global_position = Vector2(rand_x,rand_y)
	$Timer.wait_time = 2


func _on_area_2d_area_entered(area):
	area.queue_free()
