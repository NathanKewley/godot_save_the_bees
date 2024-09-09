extends TileMap

func set_map():
	$BridgeBlue.raise()
	$BridgeBlue3.raise()
	
	$BridgeBlue2.lower()
	$BridgeBlue4.lower()

func _ready():
	update_ghosts_available_tooltop()
	
	# initial map setup
	set_map()

# standard for each level
func _on_Player_time_reset():
	update_ghosts_available_tooltop()
	yield(get_tree().create_timer(0.1), "timeout")
	set_map()

func update_ghosts_available_tooltop():
	print("updating ghost tooltip")
	var ghosts = $Player.level_allowed_ghosts - $Player.ghosts.size()
	$HUD/ghost_tooltip.text = "Ghosts Available: " + str(ghosts)

# Custom logic for this level..
func _on_ButtonBlue_pressed():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()
	$BridgeBlue3.toggle()
	$BridgeBlue4.toggle()

func _on_ButtonBlue_unpressed():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()
	$BridgeBlue3.toggle()
	$BridgeBlue4.toggle()

func _on_ButtonBlue2_pressed():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()
	$BridgeBlue3.toggle()
	$BridgeBlue4.toggle()

func _on_ButtonBlue2_unpressed():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()
	$BridgeBlue3.toggle()
	$BridgeBlue4.toggle()

func _on_ButtonBlue3_pressed():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()
	$BridgeBlue3.toggle()
	$BridgeBlue4.toggle()

func _on_ButtonBlue3_unpressed():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()
	$BridgeBlue3.toggle()
	$BridgeBlue4.toggle()
