extends KinematicBody2D

var ghost_scene = preload("res://scenes/objects/PlayerGhost.tscn")

signal time_reset

export var speed = 100
export var level_allowed_ghosts = 0
var velocity = Vector2.ZERO

var time_steps = []
var ghosts = []

func _ready():
	# add the initial position to the time steps var
	var time_point = {
		"steps": [],
		"x": position.x,
		"y": position.y
	}
	time_steps.append(time_point)
	pass

func _process(delta):
	pass

func step_forward():
	# The player does not need to implement step forward as the player is the controller
	# of time.
	pass
	
func step_backward():
	# skipping backwards movement for now
	pass

func generate_ghost():
	# Skip ghost generation if there is no data to pass
	print("generating ghost")
	print(time_steps.size())
	
	# if there is data to create a ghost and we have not esceeded the max
	if (time_steps.size() > 0) and (ghosts.size() < level_allowed_ghosts):
		# Generate the ghost
		var ghost = ghost_scene.instance()
		ghost.time_steps = [] + time_steps
		ghost.position.x = time_steps[0]['x']
		ghost.position.y = time_steps[0]['y']
		ghost.set_start_position(time_steps[0]['x'], time_steps[0]['y'])
		get_parent().add_child(ghost)
		
		# Reset the player position in the level
		position.x = time_steps[0]['x']
		position.y = time_steps[0]['y']
		time_steps.clear()
		print("Number of ghosts: ", ghosts.size())
		
		# Reset all the current ghosts
		for existing_ghost in ghosts:
			existing_ghost.reset()
		
		# finally append out new ghost to the list
		ghosts.append(ghost)		
		
		# emit time reset signal so level can reset required elements
		emit_signal("time_reset")
		
	else:
		print("no ghost data to generate from")
		pass

func get_input():
	var time_point = {
		"steps": [],
		"x": position.x,
		"y": position.y
	}
	velocity = Vector2.ZERO
	
	# Check if time is being reversed
	if Input.is_action_just_released("reverse_time"):
		generate_ghost()
		pass
	
	# Handle normal movement	
	if Input.is_action_pressed("move_right"):
		$AnimatedSprite.play("walk_right")
		time_point["steps"].append("move_right")
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		$AnimatedSprite.play("walk_left")
		time_point["steps"].append("move_left")
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		$AnimatedSprite.play("walk_down")
		time_point["steps"].append("move_down")
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		$AnimatedSprite.play("walk_up")
		time_point["steps"].append("move_up")
		velocity.y -= 1
	if Input.is_action_pressed("restart_level"):
		get_tree().reload_current_scene()
		
	if Input.is_action_pressed("menu"):
		get_tree().change_scene("res://scenes/Menu.tscn")

	# if a move is places
	if velocity.length() > 0:
		# move the player and step all ghosts forward
		velocity = velocity.normalized() * speed
		for ghost in ghosts:
			ghost.step_forward()
		
		# record the move
		time_steps.append(time_point)
	else:
		$AnimatedSprite.stop()

func _physics_process(delta):
	get_input()
	move_and_slide(velocity * (delta*100))

	# check collisions
	if(get_slide_count() > 0):
		check_rock_collision(velocity)
		
func check_rock_collision(velocity):
	var rock = get_slide_collision(0).collider as Rock
	if rock:
		rock.push(velocity)
