extends TileMap

func set_map():
	$BridgeBreaking.raise()
	$BridgeBreaking3.raise()
	$BridgeBreaking5.raise()
	$BridgeBreaking8.raise()

func _ready():
	update_ghosts_available_tooltop()
	set_map()

# standard for each level
func _on_Player_time_reset():
	update_ghosts_available_tooltop()
	#yield(get_tree().create_timer(0.2), "timeout")
	#set_map()

func update_ghosts_available_tooltop():
	print("updating ghost tooltip")
	var ghosts = $Player.level_allowed_ghosts - $Player.ghosts.size()
	$HUD/ghost_tooltip.text = "Ghosts Available: " + str(ghosts)

func _on_ButtonBlue_pressed():
	$BridgeBlue.toggle()
	$BridgeBlue3.toggle()

func _on_ButtonBlue_unpressed():
	$BridgeBlue.toggle()
	$BridgeBlue3.toggle()
