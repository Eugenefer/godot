extends Area2D

var random = RandomNumberGenerator.new()
var rndSpeed = random.randi_range(200,500)


# Called when the node enters the scene tree for the first time.
func _ready():
	var positionRnd = Vector2(-400,1500)
	var isPositionNotCorrect = true
	var viewportRect = get_viewport().get_visible_rect()
	var width = viewportRect.size[0]
	var height = viewportRect.size[1]
	while(isPositionNotCorrect):
		var position_x = random.randi_range(-300, width+300)
		var position_y = random.randi_range(-300, height+300)
		
		positionRnd = Vector2(position_x,position_y)
		if(!viewportRect.has_point(positionRnd)):
			isPositionNotCorrect = false
	position = positionRnd



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
