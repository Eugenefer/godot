extends CharacterBody2D


signal laser(pos,rot)
var speed = 150
var rotation_speed = 3.0

func _process(delta):
	# Add the gravity.
	if(Input.is_action_pressed("LEFT")):
		rotation -= rotation_speed * delta
	if(Input.is_action_pressed("RIGHT")):
		rotation += rotation_speed * delta
	if(Input.is_action_pressed("UP")):
		velocity = -transform.y * speed
	
	move_and_slide()
	
	if(Input.is_action_just_pressed("SHOOT")):
		laser.emit($LaserMarker.global_position,$LaserMarker.global_rotation)	
	
