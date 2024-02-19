extends CharacterBody2D

func _physics_process(delta):
	
	var direction = Input.get_axis("ui_left", "ui_right")
	if( Input.is_action_pressed("ui_left")):
		position.x -= 100 * delta
	elif( Input.is_action_pressed("ui_right")):
		position.x += 100 * delta

	
