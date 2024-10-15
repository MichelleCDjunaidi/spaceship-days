extends Area2D
var grid_square_size = 128
var sprite_size = 128
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rescale_ratio = 1.0*grid_square_size/sprite_size
	$grid_shape.position = Vector2(grid_square_size/2,grid_square_size/2)
	$grid_shape.shape.size = Vector2(grid_square_size,grid_square_size)
	$grid_sprite.position = Vector2(grid_square_size/2,grid_square_size/2)
	$grid_sprite.scale = Vector2(rescale_ratio,rescale_ratio)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	print(position)
	pass # Replace with function body.
