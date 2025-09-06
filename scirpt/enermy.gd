class_name Enermy
extends CharacterBody2D
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

@export var speed = 20;
var direction:Vector2 = Vector2(1,0);


func _physics_process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = Vector2(-1,0);
		animated_sprite_2d.flip_h = true;
	if ray_cast_left.is_colliding():
		direction = Vector2(1,0);
		animated_sprite_2d.flip_h = false;
	
	velocity = direction * speed;
	move_and_slide();
