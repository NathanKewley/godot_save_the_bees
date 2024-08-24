extends Node2D

signal pressed
export var label = "1"

func enable():
	$Button.disabled = false
	$Button/Sprite.texture = load("res://assets/gfx/menu/level_button_enable.png")
	
func disable():
	$Button.disabled = true
	$Button/Sprite.texture = load("res://assets/gfx/menu/level_button_disable.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Button/RichTextLabel.text = label
	disable()

func _on_Button_pressed():
	emit_signal("pressed")
