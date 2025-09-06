extends CharacterBody2D

const SPEED = 100.0
const JUMP_VELOCITY = -300.0
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var face_direction:Vector2 = Vector2(1,0);
var walk_direction:Vector2 = Vector2.ZERO;

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	
	if Input.is_action_pressed("move_left"):
		face_direction = Vector2.LEFT;
		walk_direction = Vector2.LEFT;
		animated_sprite_2d.flip_h = true;
	elif Input.is_action_pressed("move_right"):
		face_direction = Vector2.RIGHT;
		walk_direction = Vector2.RIGHT;
		animated_sprite_2d.flip_h = false;
	else:
		walk_direction = Vector2.ZERO;
	
	velocity.x = walk_direction.x * SPEED;
	
	move_and_slide()
