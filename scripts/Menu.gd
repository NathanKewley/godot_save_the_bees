extends Node2D

func _ready():
	# Enable buttons based on the level the player is up to
	if($GameSave.game_save["current_level_unlock"] >= 1):
		$LevelSelect/level1_Button.disabled = false
	if($GameSave.game_save["current_level_unlock"] >= 2):
		$LevelSelect/level2_Button.disabled = false
	if($GameSave.game_save["current_level_unlock"] >= 3):
		$LevelSelect/level3_Button.disabled = false
	if($GameSave.game_save["current_level_unlock"] >= 4):
		$LevelSelect/level4_Button.disabled = false					
	if($GameSave.game_save["current_level_unlock"] >= 5):
		$LevelSelect/level5_Button.disabled = false		
	if($GameSave.game_save["current_level_unlock"] >= 6):
		$LevelSelect/level6_Button.disabled = false		
	if($GameSave.game_save["current_level_unlock"] >= 7):
		$LevelSelect/level7_Button.disabled = false		
#	if($GameSave.game_save["current_level_unlock"] >= 8):
#		$LevelSelect/end_world_button.disabled = false

func _on_level1_Button_pressed():
	$GameSave.game_save["current_level"] = 1
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level1.tscn")

func _on_level2_Button_pressed():
	$GameSave.game_save["current_level"] = 2
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level2.tscn")

func _on_level3_Button_pressed():
	$GameSave.game_save["current_level"] = 3
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level3.tscn")

func _on_level4_Button_pressed():
	$GameSave.game_save["current_level"] = 4
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level4.tscn")

func _on_level5_Button_pressed():
	$GameSave.game_save["current_level"] = 5
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level5.tscn")

func _on_level6_Button_pressed():
	$GameSave.game_save["current_level"] = 6
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level6.tscn")

func _on_level7_Button_pressed():
	$GameSave.game_save["current_level"] = 7
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level7.tscn")
