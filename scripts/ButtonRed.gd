extends Area2D

signal pressed
signal unpressed

func _ready():
	connect("body_entered", self, "on_body_entered")
	connect("body_exited", self, "on_body_exited")

func on_body_entered(body):
	emit_signal("pressed")
	$Sprite.rotation_degrees = 45
	print("red button pressed")

func on_body_exited(body):
	emit_signal("unpressed")
	$Sprite.rotation_degrees = 0
	print("red button unpressed")
