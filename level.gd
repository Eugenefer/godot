extends Node2D

var Laser: PackedScene = load("res://laser.tscn")
var Meteor: PackedScene = load("res://meteor.tscn")
var random = RandomNumberGenerator.new()
var rndSpeed = random.randi_range(200,500)
# Called when the node enters the scene tree for the first time.
func _ready():
	$Player.position = get_viewport().size/2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_player_laser(pos, rot):
	var laserInstance = Laser.instantiate()
	$Lasers.add_child(laserInstance)
	laserInstance.position = pos
	laserInstance.rotation = rot


func _on_timer_timeout():
	var meteorInstance = Meteor.instantiate()
	$Meteors.add_child(meteorInstance)
	
	var viewportRect = get_viewport().get_visible_rect()
	var width = viewportRect.size[0]
	var height = viewportRect.size[1]
	var direction = (Vector2((width/4)+random.randi_range(0,width/2),(height/4)+random.randi_range(0,height/2)) - position).normalized()
	#position += direction * rndSpeed * delta


