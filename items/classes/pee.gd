extends CharacterBody2D
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	self.global_position.x = rng.randf_range(0,648)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if body.name=="yijie":
		Yijie.Score+=1
		self.queue_free()
	elif body.name=="black_fan":
		body.queue_free()
