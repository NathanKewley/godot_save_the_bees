extends Node2D

func _ready():
	# Enable buttons based on the level the player is up to
	if($GameSave.game_save["current_level_unlock"] >= 1):
		$level1_Button.disabled = false
	if($GameSave.game_save["current_level_unlock"] >= 2):
		$level2_Button.disabled = false
	if($GameSave.game_save["current_level_unlock"] >= 3):
		$level3_Button.disabled = false
	if($GameSave.game_save["current_level_unlock"] >= 4):
		$level4_Button.disabled = false					
	if($GameSave.game_save["current_level_unlock"] >= 5):
		$level5_Button.disabled = false		
	if($GameSave.game_save["current_level_unlock"] >= 6):
		$level6_Button.disabled = false		
	if($GameSave.game_save["current_level_unlock"] >= 7):
		$level7_Button.disabled = false		
	if($GameSave.game_save["current_level_unlock"] >= 8):
		$end_world_button.disabled = false

func _on_back_Button_pressed():
	get_tree().quit()

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

func _on_end_world_button_pressed():
	$GameSave.game_save["current_level"] = 8
	$GameSave.save_data($GameSave.save_file)
	get_tree().change_scene("res://scenes/levels/GameWin.tscn")

# Level button visibility
func _on_level_switch1_pressed():
	$level1_Button.visible = true

func _on_level_switch1_unpressed():
	$level1_Button.visible = false

func _on_level_switch2_pressed():
	$level2_Button.visible = true

func _on_level_switch2_unpressed():
	$level2_Button.visible = false

func _on_level_switch3_pressed():
	$level3_Button.visible = true

func _on_level_switch3_unpressed():
	$level3_Button.visible = false

func _on_level_switch4_pressed():
	$level4_Button.visible = true

func _on_level_switch4_unpressed():
	$level4_Button.visible = false

func _on_level_switch5_pressed():
	$level5_Button.visible = true

func _on_level_switch5_unpressed():
	$level5_Button.visible = false

func _on_level_switch6_pressed():
	$level6_Button.visible = true

func _on_level_switch6_unpressed():
	$level6_Button.visible = false

func _on_level_switch7_pressed():
	$level7_Button.visible = true

func _on_level_switch7_unpressed():
	$level7_Button.visible = false

func _on_level_switch8_pressed():
	$level8_Button.visible = true

func _on_level_switch8_unpressed():
	$level8_Button.visible = false

func _on_red_switch_pressed():
	$end_world_button.visible = true

func _on_red_switch_unpressed():
	$end_world_button.visible = false
