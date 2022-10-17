extends TileMap

func _ready():
	update_ghosts_available_tooltop()

# standard for each level
func _on_Player_time_reset():
	update_ghosts_available_tooltop()

func update_ghosts_available_tooltop():
	print("updating ghost tooltip")
	var ghosts = $Player.level_allowed_ghosts - $Player.ghosts.size()
	$HUD/ghost_tooltip.text = "Ghosts Available: " + str(ghosts)

# Custom logic for this level..
func _on_ButtonBlue_pressed():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()
	$BridgeBlue3.toggle()

func _on_ButtonBlue_unpressed():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()
	$BridgeBlue3.toggle()

func _on_ButtonRed_pressed():
	$BridgeRed.toggle()
	$BridgeRed2.toggle()
	$BridgeRed3.toggle()

func _on_ButtonRed_unpressed():
	$BridgeRed.toggle()
	$BridgeRed2.toggle()
	$BridgeRed3.toggle()
