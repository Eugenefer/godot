extends Node2D

var Laser: PackedScene = load("res://scenes/laser.tscn")
var meteor_scene: PackedScene = load("res://scenes/meteor.tscn")

func _ready():
	$Player.connect("laser", Callable(self, "_on_player_laser"))

func _on_meteor_timer_timeout():
	var meteorInstance = meteor_scene.instantiate()
	$Meteors.add_child(meteorInstance)	

func _on_player_laser(pos, rot):
	var laserInstance = Laser.instantiate()
	$Lasers.add_child(laserInstance)
	laserInstance.position = $Player.global_position
	laserInstance.rotation = $Player.global_rotation
	print("laser position: ",str(laserInstance.position))
	print("Position given to _on_player_laser:"+str(pos))
