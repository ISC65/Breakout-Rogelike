extends StaticBody2D
class_name Brick

@onready var animatedself: AnimatedSprite2D = $Brick

#Defines types of bricks
var types: Array = [
	"layered",
	"normal",
	"durable",
	"explosive",
	"brick",
	"wet"
]

#does an action depending on type (accesed by the ball and other entities)
func breakself():
	animatedself.play("default")
	await get_tree().create_timer(0.3).timeout
	queue_free()
