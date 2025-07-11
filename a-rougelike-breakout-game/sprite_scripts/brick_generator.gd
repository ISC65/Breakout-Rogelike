#handles generation of bricks
extends Node2D

@export var brick_colors = [
	preload("res://Palletes/Brick_Red_Pallete.png"),
	preload("res://Palletes/Brick_Green_Pallete.png")
]
@onready var brickmaterial = $"../brick".get_node("Brick").get_material()

var palleteIDX = 0

#for the grid
@export var Rows = 5
@export var Columns = 8
var grid_array: Array = []

#to get the screensize
var scrnsize

#also for the grid
var brick_width = 50
var brick_height = 20
var spacing = 11

#for the object pool
var brick_pool: Array = []
var max_pool_size = 300
var brick_template: Node = null


# Initialize the brick pool
func initialize_brick_pool():
	if brick_template == null:
		brick_template = $"../brick"
		brick_template.visible = false
		brick_template.position = Vector2(-1000, -1000)  # Move off-screen
		brick_template.name = "BrickTemplate"
		brick_template.reparent.call_deferred($"../../brick container")
	
	for i in range(max_pool_size):
		var brick = brick_template.duplicate()
		brick.visible = false
		brick.position = Vector2(-1000, -1000) #read the abovv comment
		add_child.call_deferred(brick)
		brick_pool.append(brick)

# I mean do i have to explain this
func get_brick_from_pool() -> Node:
	if brick_pool.size() > 0:
		var brick = brick_pool.pop_back()
		brick.visible = true
		return brick
	else:
		# If the pool is empty, create a new brick
		var brick = brick_template.duplicate()
		add_child(brick)
		return brick

# If you can read the function, you know what it does
func return_brick_to_pool(brick: Node):
	brick.visible = false
	brick.position = Vector2(-1000, -1000)  # Move off-screen
	brick_pool.append(brick)

# Generates bricks in a grid
func generate(_delay: float, rows: int, columns: int):
	for row in range(rows):
		palleteIDX += 1
		if palleteIDX >= brick_colors.size():
			palleteIDX = 0
			
		for col in range(columns):
			await get_tree().create_timer(_delay).timeout
			var brick = get_brick_from_pool()
			brick.reparent($"../../brick container")
			brick.position = Vector2(col * (brick_width + spacing), row * (brick_height + spacing))
			
			grid_array.append(brick)

func _ready() -> void:
	scrnsize = get_viewport_rect().size
	grid_array = []
	initialize_brick_pool()
	generate(0, Rows, Columns)

func _process(delta: float) -> void:
	print(brick_colors.size())
	if brickmaterial and brickmaterial is ShaderMaterial:
		brickmaterial.set_shader_parameter("palette", brick_colors[palleteIDX])
	else:
		printerr("Error: No ShaderMaterial found on the Brick node.")

#Function to clean up bricks on game over
func _on_main_game_manager_gameover() -> void:
	for i in grid_array:
		if i == null:
			break
		else:
			return_brick_to_pool(i)
	print_rich("[color=yellow][b]LOL IMAGINE LOSING GARBAGE COULDNT BE ME[/b][/color]")
