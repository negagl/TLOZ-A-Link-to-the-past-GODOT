extends CharacterBody2D

@export var speed: int = 35
@onready var animation = $AnimationPlayer


func validate_input() -> void:
	var move_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = move_direction * speed


func animate_movement() -> void:
	if velocity.length() == 0:
		animation.stop()
	else:
		var animation_direction = "Walk_Down"
		
		if velocity.x < 0:
			animation_direction = "Walk_Left"
		elif velocity.x > 0:
			animation_direction = "Walk_Right"
		elif velocity.y < 0:
			animation_direction = "Walk_Up"
		
		animation.play(animation_direction)


func _physics_process(delta: float) -> void:
	validate_input()
	animate_movement()
	move_and_slide()
