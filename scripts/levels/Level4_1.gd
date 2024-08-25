extends TileMap

func set_map():
	$BridgeBlue.raise()
	$BridgeBlue2.lower()
	$BridgeBlue3.raise()
	
	$BridgeRed.lower()
	
func toggle_blue():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()
	$BridgeBlue3.toggle()
	
func toggle_red():
	$BridgeRed.toggle()
	
func _ready():
	update_ghosts_available_tooltop()
	set_map()

# standard for each level
func _on_Player_time_reset():
	update_ghosts_available_tooltop()

func update_ghosts_available_tooltop():
	print("updating ghost tooltip")
	var ghosts = $Player.level_allowed_ghosts - $Player.ghosts.size()
	$HUD/ghost_tooltip.text = "Ghosts Available: " + str(ghosts)

func _on_ButtonBlue_pressed():
	toggle_blue()
	
func _on_ButtonBlue_unpressed():
	toggle_blue()
	
func _on_ButtonBlue2_pressed():
	toggle_blue()
	
func _on_ButtonBlue2_unpressed():
	toggle_blue()
	
func _on_ButtonRed_pressed():
	toggle_red()
	
func _on_ButtonRed_unpressed():
	toggle_red()
