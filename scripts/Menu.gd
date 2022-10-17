extends Node2D

func _ready():
	pass

func _on_exit_Button_pressed():
	get_tree().quit()

func _on_levelSelect_Button_pressed():
	get_tree().change_scene("res://scenes/levelSelect.tscn")

