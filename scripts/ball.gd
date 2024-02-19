extends Area2D

var add_x = -10
var add_y = 10
func _physics_process(delta):
	position += Vector2(add_x,add_y) 
	pass


func _on_body_entered(body):
	#player entered
	if( str(body) == "player:<CharacterBody2D#27497858266>"):
		add_y = -add_y
	#collided with right or left wall
	if( str(body) == "right:<StaticBody2D#27464303832>" or str(body) ==  "left:<StaticBody2D#27430749398>"):
		add_x = -add_x
	
	#collided with top or bottom wall
	if( str(body) == "top:<StaticBody2D#27363640526>" or str(body) == "bottom:<StaticBody2D#27397194956>"):
		add_y = -add_y
	
	print(body)
	
	pass
	
