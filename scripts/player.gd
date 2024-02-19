extends CharacterBody2D

const speed = 300
func _physics_process(delta):
	
	var direction = Input.get_axis("ui_left", "ui_right")
	if( Input.is_action_pressed("ui_left")):
		position.x -= speed * delta
	elif( Input.is_action_pressed("ui_right")):
		position.x += speed * delta

	
