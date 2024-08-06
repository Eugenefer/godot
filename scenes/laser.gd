extends Area2D

@export var laserSpeed: int = 200

func _ready():
	position = Vector2(0,0)

func _process(delta):
	var forward: Vector2 = Vector2(cos(rotation), sin(rotation))
	position += transform.x.rotated(deg_to_rad(270))  * 10 * delta
