extends Node2D
var projectile_scene = load("res://scenes/projectile.tscn")

@export var hp = 100
@export var attack_speed = 2
@export var projectile_speed = 200
@export var direction = Vector2.DOWN
@export var projectile_damage = 2

@export var can_attack = false#not meant to be modified, exported for debugging
var current_target

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Attack_timer.wait_time = 1.0/attack_speed
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if can_attack:
		attack()
	pass

func attack():
	can_attack = false
	var projectile_instance = projectile_scene.instantiate()
	projectile_instance.projectile_speed = projectile_speed
	projectile_instance.rotation = direction.angle()
	projectile_instance.projectile_damage = projectile_damage
	add_child(projectile_instance)
	$Attack_timer.start()
	pass


func _on_attack_timer_timeout() -> void:
	can_attack = true
	pass # Replace with function body.

func receive_attack(damage):
	hp -= damage
	if (hp<=0):
		death()

func _on_range_area_entered(area: Area2D) -> void:
	current_target = area.get_parent()
	pass # Replace with function body.

func death():
	#add proper visuals
	queue_free()
