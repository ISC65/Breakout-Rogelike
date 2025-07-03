extends Node
signal gameover #signal for when the player 'drops the ball' LOL (if anyone has a better joke and comment than mine plss let me know)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_b_a_l_l_skill_issue() -> void:
	gameover.emit()
