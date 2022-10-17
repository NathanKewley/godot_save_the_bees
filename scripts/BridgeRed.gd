extends KinematicBody2D

func _ready():
	pass

func raise():
	$AnimatedSprite.play("raised")
	$CollisionShape2D.set_deferred("disabled",true)

func lower():
	$AnimatedSprite.play("lowered")
	$CollisionShape2D.set_deferred("disabled",false)

func toggle():
	if($CollisionShape2D.disabled == true):
		lower()
	else:
		raise()
