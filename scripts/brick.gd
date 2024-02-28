extends Area2D


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	$Sprite2D.hide()
	$Timer.start()
	$GPUParticles2D.emitting = true
	
	


func _on_timer_timeout():
	queue_free()
	
