extends KinematicBody2D

func _ready():
	raise()

func raise():
	$AnimatedSprite.play("raised")
	$CollisionShape2D.set_deferred("disabled",true)
	print("raising bridge")

func lower():
	$AnimatedSprite.play("lowered")
	$CollisionShape2D.set_deferred("disabled",false)
	print("lowering bridge")

func _on_Area2D_body_exited(body):
	lower()

func reset():
	raise()
