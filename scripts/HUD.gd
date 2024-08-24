extends CanvasLayer

func toggle_controls():
	if $controls_tooltip_hidden.visible == false:
		$controls_tooltip_hidden.visible = true
		$controls_tooltip.visible = false
	else:
		$controls_tooltip_hidden.visible = false
		$controls_tooltip.visible = true

func _ready():
	$controls_tooltip.visible = false

func _process(delta):
	if Input.is_action_just_pressed("show_controls"):
		toggle_controls()
