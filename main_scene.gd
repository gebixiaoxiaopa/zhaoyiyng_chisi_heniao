extends Node2D
@onready var pee = preload("res://pee.tscn")
@onready var shit = preload("res://shit.tscn")
var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	$object_spawn_manager.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text ="Score:"+ str(Yijie.Score)


func _on_object_spawn_manager_timeout():
	var new_pee=pee.instantiate()
	new_pee.global_position.y = rng.randf_range(0,648)
	
	var new_shit = shit.instantiate()
	new_shit.global_position.y = rng.randf_range(0,648)
	
	get_tree().root.add_child(new_pee)
	get_tree().root.add_child(new_shit)
