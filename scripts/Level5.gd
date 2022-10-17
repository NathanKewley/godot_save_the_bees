extends TileMap

func _ready():
	update_ghosts_available_tooltop()
	
	# set initial level things
	$BridgeBlue_1.toggle()

# standard for each level
func _on_Player_time_reset():
	update_ghosts_available_tooltop()
	#$Rock.reset()

func update_ghosts_available_tooltop():
	print("updating ghost tooltip")
	var ghosts = $Player.level_allowed_ghosts - $Player.ghosts.size()
	$HUD/ghost_tooltip.text = "Ghosts Available: " + str(ghosts)

# Custom logic for this level..
func _on_ButtonBlue_pressed():
	$BridgeBlue_1.toggle()
	$BridgeBlue_2.toggle()

func _on_ButtonBlue_unpressed():
	$BridgeBlue_1.toggle()
	$BridgeBlue_2.toggle()


func _on_ButtonRed_pressed():
	$BridgeRed_1.toggle()

func _on_ButtonRed_unpressed():
	$BridgeRed_1.toggle()
