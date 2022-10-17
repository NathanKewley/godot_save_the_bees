extends TileMap

func set_map():
	$BridgeBlue.lower()
	$BridgeBlue2.raise()

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

func toggle_blue_brigdges():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()

func _on_ButtonBlue_pressed():
	toggle_blue_brigdges()

func _on_ButtonBlue_unpressed():
	toggle_blue_brigdges()

func _on_ButtonBlue2_pressed():
	toggle_blue_brigdges()

func _on_ButtonBlue2_unpressed():
	toggle_blue_brigdges()
