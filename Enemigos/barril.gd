class_name  Barril
extends RigidBody2D

@export var demasiado_bajo = 1000

func _process(delta):
	if position.y > demasiado_bajo:
		queue_free()
