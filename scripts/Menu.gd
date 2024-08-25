extends Node2D

func _ready():
	# Enable buttons based on the level the player is up to
	if($GameSave.game_save["current_level_unlock"] >= 1):
		$LevelSelection/levelButton1.enable()
	if($GameSave.game_save["current_level_unlock"] >= 2):
		$LevelSelection/levelButton2.enable()
	if($GameSave.game_save["current_level_unlock"] >= 3):
		$LevelSelection/levelButton3.enable()
	if($GameSave.game_save["current_level_unlock"] >= 4):
		$LevelSelection/levelButton4.enable()
	if($GameSave.game_save["current_level_unlock"] >= 5):
		$LevelSelection/levelButton5.enable()
	if($GameSave.game_save["current_level_unlock"] >= 6):
		$LevelSelection/levelButton6.enable()
	if($GameSave.game_save["current_level_unlock"] >= 7):
		$LevelSelection/levelButton7.enable()
	if($GameSave.game_save["current_level_unlock"] >= 8):
		$LevelSelection/levelButton8.enable()
	if($GameSave.game_save["current_level_unlock"] >= 9):
		$LevelSelection/levelButton9.enable()
	if($GameSave.game_save["current_level_unlock"] >= 10):
		$LevelSelection/levelButton10.enable()
	if($GameSave.game_save["current_level_unlock"] >= 11):
		$LevelSelection/levelButton11.enable()
	if($GameSave.game_save["current_level_unlock"] >= 12):
		$LevelSelection/levelButton12.enable()

func _on_levelButton1_pressed():
	$GameSave.game_save["current_level"] = 1
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level1.tscn")

func _on_levelButton2_pressed():
	$GameSave.game_save["current_level"] = 2
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level2.tscn")

func _on_levelButton3_pressed():
	$GameSave.game_save["current_level"] = 3
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level3.tscn")

func _on_levelButton4_pressed():
	$GameSave.game_save["current_level"] = 4
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level4.tscn")

func _on_levelButton5_pressed():
	$GameSave.game_save["current_level"] = 5
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level5.tscn")

func _on_levelButton6_pressed():
	$GameSave.game_save["current_level"] = 6
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level6.tscn")

func _on_levelButton7_pressed():
	$GameSave.game_save["current_level"] = 7
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level7.tscn")

func _on_levelButton8_pressed():
	$GameSave.game_save["current_level"] = 8
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level8.tscn")

func _on_levelButton9_pressed():
	$GameSave.game_save["current_level"] = 9
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level9.tscn")

func _on_levelButton10_pressed():
	$GameSave.game_save["current_level"] = 10
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level10.tscn")

func _on_levelButton11_pressed():
	$GameSave.game_save["current_level"] = 11
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level2_1.tscn")
	
func _on_levelButton12_pressed():
	$GameSave.game_save["current_level"] = 0
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/Level4_1.tscn")
