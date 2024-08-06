extends CharacterBody2D

@export var speed: int = 10
@export var rotation_speed: float = 3.0

signal laser(pos, rot)

func _ready():
	pass

func _process(delta):
	var forward: Vector2 = Vector2(cos(rotation), sin(rotation)).rotated(-PI/2)
	if Input.is_action_pressed("left"):
		rotation -= rotation_speed * delta
	if Input.is_action_pressed("right"):
		rotation += rotation_speed * delta

	if Input.is_action_pressed("up"):
		velocity += forward * speed
		move_and_slide()
		
		#print("marker e astronave e coll poligon e sprite:",str($Marker2D.global_position)," + ", str($".".global_position), " + ", str($CollisionPolygon2D.global_position),
		#" + ", str($PlayerSprite2D.global_position))
	
	if Input.is_action_just_pressed("SHOOT"):
		print(str(delta))
		print("playerglobal:", str(global_position))
		print("markerglobal:",str($Marker2D.global_position))
		laser.emit($Marker2D.global_position, rotation)  # Emit the player's global position and rotation
		#print("pew")
