extends CharacterBody2D
class_name Paddle
#above is the class of what instance this is

#declares variales, these are useful
@export var SPEED: float = 500.0
@export var deceleration : float  = 300.0

var sprintSpeed: float = SPEED * 2

@onready var serveSFX: AudioStreamPlayer = $"serve sound"
@onready var ball = $"../B A L L"
@onready var marker_2d = $Marker2D

#these variables are set later
var screensize
var is_launched: bool = false

func _physics_process(delta: float) -> void:
	screensize = get_viewport_rect().size
	
	if not is_launched:
		ball.global_position = marker_2d.global_position

	var direction = Input.get_axis("Left", "Right")
	
	if Input.is_action_pressed("Speed Up"):
		SPEED = sprintSpeed
	if Input.is_action_just_released("Speed Up"):
		SPEED = 500.0
	
	if direction:
		velocity.x = direction * SPEED
	else:
		if velocity.x > 0:
			velocity.x = max(velocity.x - deceleration / delta, 0)
		elif velocity.x < 0:
			velocity.x = min(velocity.x + deceleration / delta, 0)
	
	position += velocity * delta
	position = position.clamp(Vector2(50, 0), Vector2(screensize.x - 50, screensize.y))

#handles serves (sfx, ball pos, etc)
func serve():
	if is_launched: return
	is_launched = true
	ball.set_physics_process(true)
	ball.global_position = marker_2d.global_position
	ball.velocity = Vector2.UP.rotated(deg_to_rad(-90 + 40)) * ball.ball_speed
	ball.rotation = deg_to_rad(-90 + 60)
	serveSFX.play(0.0)
	

func _input(event):
	if event.is_action_pressed("Launch B A L L"):
		serve()
