extends Node2D

var brick = load("res://Scenes/brick.tscn")
var brick_width = 100
var brick_height = 60

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(12):
		var new_brick = brick.instantiate()
		new_brick.position.x = i * brick_width
		$bricks_layers/bricks_layer_1.add_child(new_brick)
		
	for i in range(12):
		var new_brick = brick.instantiate()
		new_brick.position = Vector2(i * brick_width , brick_height)
		$bricks_layers/bricks_layer_2.add_child(new_brick)
	for i in range(12):
		var new_brick = brick.instantiate()
		new_brick.position = Vector2(i * brick_width , brick_height*2)
		$bricks_layers/bricks_layer_3.add_child(new_brick)
	for i in range(12):
		var new_brick = brick.instantiate()
		new_brick.position = Vector2(i * brick_width , brick_height*3)
		$bricks_layers/bricks_layer_4.add_child(new_brick)
	for i in range(12):
		var new_brick = brick.instantiate()
		new_brick.position = Vector2(i * brick_width , brick_height*4)
		$bricks_layers/bricks_layer_5.add_child(new_brick)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
