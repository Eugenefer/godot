extends Area2D

var rotation_speed: int
var direction_x: float
var speed: int


func _ready():
	#Variable to calculate position and direction
	var viewportRect = get_viewport().get_visible_rect()
	var random:= RandomNumberGenerator.new()
	var width = viewportRect.size[0]
	var height = viewportRect.size[1]
	speed = random.randi_range(200,500)
	#while the position is in the viewport we dont want to spawn meteors
	var isPositionNotCorrect = true
	while(isPositionNotCorrect):
		var random_x = random.randi_range(-100, width+100)
		var random_y = random.randi_range(-100, height+100)
		
		#pos:w1152,h648,
	
		var positionRnd = Vector2(random_x,random_y)
		if(!viewportRect.has_point(positionRnd)):
			isPositionNotCorrect = false
			position = positionRnd
			#print(position)
	
	
	
	
	#calculate the rotation of the meteor to make it path towards the center
	var viewportCenter = viewportRect.size / 2
	
	#rotation = position.angle_to(viewportCenter)
	

func _process(delta):
	#position += Vector2(0, 1.0) * speed * delta
	position += Vector2(cos(rotation), sin(rotation)) * speed * delta

func _on_body_entered(body):
	pass


