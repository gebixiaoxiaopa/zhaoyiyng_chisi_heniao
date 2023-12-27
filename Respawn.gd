extends Control
signal respawn()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



	








	
	


func _on_button_toggled(button_pressed):
	if button_pressed==true:
		get_tree().reload_current_scene()
		respawn.emit()
		self.hide()


func _on_button_pressed():
	
	get_tree().reload_current_scene()
	respawn.emit()
	self.hide()
