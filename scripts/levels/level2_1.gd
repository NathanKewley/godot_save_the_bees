extends TileMap

func set_map():
	$BridgeBlue.raise()

	$BridgeRed.lower()
	$BridgeBlue2.lower()
	$BridgeBlue3.lower()

func toggle_blue_bridge():
	$BridgeBlue.toggle()
	$BridgeBlue2.toggle()
	$BridgeBlue3.toggle()

func toggle_red_bridge():
	$BridgeRed.toggle()

func _ready():
	# initial map setup
	set_map()

# Custom logic for this level..
func _on_ButtonBlue_pressed():
	toggle_blue_bridge()

func _on_ButtonBlue_unpressed():
	toggle_blue_bridge()

func _on_ButtonRed_pressed():
	toggle_red_bridge()

func _on_ButtonRed_unpressed():
	toggle_red_bridge()
