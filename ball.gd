extends Area2D

var add_x = 1
var add_y = 1
func _physics_process(delta):
	position += Vector2(add_x,add_y) 
	pass


func _on_body_entered(body):
	add_y = -add_y
	print('body entered')
	pass
	
