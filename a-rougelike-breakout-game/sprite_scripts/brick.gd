extends StaticBody2D
class_name Brick

var types = [
	"big",
	"normal",
	"durable",
	"explosive",
	"brick",
	"wet"
]

@onready var animatedself: AnimatedSprite2D = $Brick

func breakself():
	animatedself.play("default")
	await get_tree().create_timer(0.3).timeout
	queue_free()
