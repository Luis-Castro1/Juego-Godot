class_name Player
extends CharacterBody2D

@export var gravity = 1000 
@export var jum_speed = 600
@export var speed = 500

func _physics_process(delta):
	
	#Horizontal
	var direction = Input.get_axis("Izquierda", "Derecha")
	velocity.x = speed * direction
	
	# Gravedad
	if not is_on_floor():
		velocity.y += gravity * delta
		
	var jump_pressed = Input.is_action_just_pressed("Saltar")
		
	if jump_pressed:
		velocity.y -= jum_speed
		
	move_and_slide()
