extends CharacterBody2D
class_name Ball
signal SkillIssue #I wrote some of this code at school by the way 

@export var ball_speed : float = 700.0

@onready var raycast = $RayCast2D
@onready var sound: AudioStreamPlayer = $"bounce sound" #placeholder, will get replaced soon

var screensize

func _ready():
	#to prevent the ball moving instantly
	set_physics_process(false)

func _physics_process(delta):
	screensize = get_viewport_rect().size
	var movement = velocity * delta
	var collision = move_and_collide(movement)
	
	# Handle screen edge collisions
	if position.x < 0 or position.x > screensize.x:
		velocity.x *= -1
		position.x = clamp(position.x, 0, screensize.x) # Keep ball within bounds
	if position.y < 0:
		velocity.y /= -1
		position.y = 0
	elif position.y > screensize.y:
		SkillIssue.emit()
		set_physics_process(false) #Stops the ball
		
		
	#Handle collisions with other objects (like the paddle)
	if collision:
		if collision.get_collider() is Paddle:
			velocity = global_position - collision.get_collider().global_position
			
			# Keep the ball moving at its speed
			velocity = velocity.normalized() * ball_speed
			
		else:
			if collision.get_collider() is Brick:
				collision.get_collider().breakself()
				sound.play(0.0)
				
			velocity = velocity.bounce((collision.get_normal() / 1.20).normalized())
			velocity = velocity.normalized() * ball_speed
