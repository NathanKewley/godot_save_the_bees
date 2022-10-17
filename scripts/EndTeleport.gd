extends Area2D

signal level_complete

func _ready():
	$AnimatedSprite.play("idle")

func _on_EndTeleport_body_entered(body):
	hide()
	$CollisionShape2D.set_deferred("disabled", true)	
	emit_signal("level_complete")
