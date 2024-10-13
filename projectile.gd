extends Node2D
var projectile_speed = 1
var projectile_damage = 1
#When instantiating a projectile, modify projectile_speed and rotation before adding to the scene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += Vector2.RIGHT.rotated(rotation)*projectile_speed*delta
	pass
