extends Node

var game_save = {
	"current_level": 0,
	"current_level_unlock": 1
}

var save_file = "user://savegame.save"

func _ready():
	#save_data(save_file)
	var file_loader = File.new()
	if not file_loader.file_exists(save_file):
		save_data(save_file)
	load_data(save_file)

func load_data(file):
	var file_loader = File.new()
	file_loader.open(file, File.READ)
	game_save = file_loader.get_var()
	file_loader.close()
	print(game_save)
	
func save_data(file):
	var file_loader = File.new()
	file_loader.open(file, File.WRITE)
	file_loader.store_var(game_save)
	file_loader.close()
	print(game_save)

func _on_EndTeleport_level_complete():
	# Unlock a new level if the current highest unlocked level was completed
	if(game_save["current_level_unlock"] < (game_save["current_level"] + 1)):
		game_save["current_level_unlock"] = (game_save["current_level"] + 1)
	save_data(save_file)
	get_tree().change_scene("res://scenes/Menu.tscn")
