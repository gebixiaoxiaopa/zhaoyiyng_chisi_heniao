extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.global_position.y = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.y+=10
	move_and_slide()

func _on_area_2d_body_entered(body):
	if body.name == "yijie":
		Yijie.health-=5
		self.queue_free()
	elif body.name=="pee":
		queue_free()
	elif body.name=="shit":
		queue_free()
