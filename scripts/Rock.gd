extends KinematicBody2D
class_name Rock

var startx = 0
var starty = 0

func _ready():
	startx = position.x
	starty = position.y

func push(velocity):
	move_and_slide(velocity)

func reset():
	position.x = startx
	position.y = starty
