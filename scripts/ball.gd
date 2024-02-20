extends Area2D

var add_x = -10
var add_y = 10
func _physics_process(delta):
	position += Vector2(add_x,add_y) 
	pass

#a function to return the name of node that entered in ball
func return_node(str):
	var node_string : String = ""
	for ch in str:
		if( ch != ':'):
			node_string += ch
		else:
			break
	return node_string
	
	#for collision of ball between player or walls
func _on_body_entered(body):
	var body_node_name = return_node( str(body))

	#player entered
	if( body_node_name == "player"):
		add_y = -add_y
	#collided with right or left wall
	if( body_node_name == "right" or body_node_name ==  "left"):
		add_x = -add_x
	
	#collided with top or bottom wall
	if( body_node_name == "top" or body_node_name == "bottom"):
		add_y = -add_y
	

#for collision of ball with brick
func _on_area_entered(area):
	add_y = -add_y
