extends Area2D

var laserSpeed = 600
# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = create_tween()
	tween.tween_property($Sprite2D, 'scale', Vector2(0.4,0.4), 0.2).from(Vector2(0,0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += -transform.y * laserSpeed * delta
