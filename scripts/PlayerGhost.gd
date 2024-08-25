extends KinematicBody2D

var speed = 100
var time_steps = []
var current_step = 0
var velocity = Vector2.ZERO

func _ready():
	pass

func _process(delta):
	step_forward()

func set_start_position(x, y):
	print("setting ghost start position ", x, ",", y)
	position.x = x
	position.y = y

func process_step(step):
	#velocity = Vector2.ZERO
	if step == "move_right":
		$AnimatedSprite.play("walk_right")
		velocity.x += 1
	if step == "move_left":
		$AnimatedSprite.play("walk_left")
		velocity.x -= 1
	if step == "move_down":
		$AnimatedSprite.play("walk_down")
		velocity.y += 1
	if step == "move_up":
		$AnimatedSprite.play("walk_up")
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	else:
		$AnimatedSprite.stop()

func step_forward():
	if time_steps.size() > current_step:
		for step in time_steps[current_step]["steps"]:
			process_step(step)
			print("Stepping with command: ", step)
		current_step = current_step + 1
	
func step_backward():
	pass

func reset():
	current_step = 0
	position.x = time_steps[0]['x']
	position.y = time_steps[0]['y']	

func _physics_process(delta):
	move_and_slide(velocity * (delta*100))

	# check collisions
	if(get_slide_count() > 0):
		check_rock_collision(velocity)
	velocity = Vector2.ZERO
		
func check_rock_collision(velocity):
	var rock = get_slide_collision(0).collider as Rock
	if rock:
		rock.push(velocity/2)
