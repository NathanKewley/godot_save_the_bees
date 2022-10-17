extends TileMap

func _ready():
	pass

# Custom logic for this level..
func _on_ButtonBlue_pressed():
	$BridgeBlue.raise()
	#$BridgeBlue.get_node("CollisionShape2D").disabled = true

func _on_ButtonBlue_unpressed():
	$BridgeBlue.lower()
