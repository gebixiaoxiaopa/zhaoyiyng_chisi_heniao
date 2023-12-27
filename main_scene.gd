extends Node2D
@onready var pee = preload("res://items/classes/pee.tscn")
@onready var shit = preload("res://items/classes/shit.tscn")
@onready var health = preload("res://items/classes/health.tscn")
@onready var black_fan = preload("res://items/classes/black_fan.tscn")

var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	$object_spawn_manager.start()
	$black_fan_spawn_manager.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text ="Score:"+ str(Yijie.Score)
	$Label2.text ="Health:"+ str(Yijie.health)
	

func _on_object_spawn_manager_timeout():
	$object_spawn_manager.wait_time = rng.randf_range(0.001,5)

	var new_pee=pee.instantiate()
	new_pee.global_position.y = rng.randf_range(0,648)
	
	var new_shit = shit.instantiate()
	new_shit.global_position.y = rng.randf_range(0,648)
	var new_health = health.instantiate()
	new_health.global_position.y = rng.randf_range(0,648)
	
	
	var obj_list = [new_health,new_pee,new_shit]
	get_tree().root.add_child(obj_list[rng.randi_range(0,2)])
	

	





	


func _on_black_fan_spawn_manager_timeout():
	var new_black_fan = black_fan.instantiate()
	new_black_fan.global_position.x = rng.randf_range(0,648)
	
	get_tree().root.add_child(new_black_fan)
