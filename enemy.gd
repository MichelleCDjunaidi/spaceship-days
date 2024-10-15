extends Node2D

@export var hp = 100
@export var attack = 15
@export var move_speed = 2
@export var attack_speed = 2
@export var is_blocked = false
@export var blocking_tower = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func attack_blocker(blocking_tower):
	blocking_tower.receive_attack(attack)
	pass

func receive_attack(projectile):
	pass

#how to code for tower vs projectile? do I do a separate function and check the type of what enters?
func _on_range_area_entered(area: Area2D) -> void:
	blocking_tower = area.get_parent()
	pass # not sure how to properly code this

func death():
	#add proper visuals
	queue_free()
