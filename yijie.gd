extends CharacterBody2D
var Speed = 20

var Score=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	player_movement()
	move_and_slide()
func player_movement() -> void:
	if Input.is_action_pressed("move_down"):
		velocity.y+= Speed
	elif Input.is_action_pressed("move_up"):
		velocity.y-=Speed
	elif Input.is_action_pressed("move_left"):
		velocity.x-=Speed
		
	elif Input.is_action_pressed("move_right"):
		velocity.x+=Speed
		
		
	else:
		velocity.x=0
		velocity.y=0
	if self.global_position.x > 648:
		self.global_position.x = 0
	elif self.global_position.x < 0:
		self.global_position.x = 648
	elif self.global_position.y >648:
		self.global_position.y=0
	elif self.global_position.y <0:
		self.global_position.y=648
