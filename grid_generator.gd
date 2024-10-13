extends Node2D
@export var grid_size = 128
@export var grid_l = 6
@export var grid_h = 4
@export var sprite_size = 128
var occupied = false

var grid_scene = load("res://grid_square_area.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rescale_ratio = 1.0*grid_size/sprite_size
	for i in range(grid_l):
		for j in range(grid_h):
			
			#Generate grid images for visualisation
			var grid_instance = grid_scene.instantiate()
			grid_instance.position = Vector2(i*grid_size,j*grid_size)
			grid_instance.grid_square_size = grid_size
			grid_instance.sprite_size = sprite_size
			add_child(grid_instance)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
