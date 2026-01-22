extends CharacterBody2D

@export var speed: int = 35
@onready var animation = $AnimationPlayer
@onready var sprite = $Sprite2D

func validateInput() -> void:
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection * speed


func animateMovement() -> void:
	if velocity.length() == 0:
		animation.stop()
	else:
		var animationDirection = "Walk_Down"
		
		if velocity.x < 0:
			animationDirection = "Walk_Left"
		elif velocity.x > 0:
			animationDirection = "Walk_Right"
		elif velocity.y < 0:
			animationDirection = "Walk_Up"
		
		animation.play(animationDirection)


func _physics_process(delta: float) -> void:
	validateInput()
	animateMovement()
	move_and_slide()
