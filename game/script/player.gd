extends CharacterBody2D

const GRAVITY : int = 150
const JUMP_SPEED : int = -1800

func _physics_process(delta):
	velocity.y += GRAVITY + delta
	
	if is_on_floor():
		if Input.is_action_pressed("jump"):
			$SoundJump.play()
			velocity.y = JUMP_SPEED
		
		#elif Input.is_action_pressed("duck"):
			#$AnimatedSprite2D.play("duck")
	else:
		if Input.is_action_pressed("jump"):
			$SoundRun.play()
			#$AnimatedSprite2D.play("run")
	#else:
		#$animatedSprite2D.play("jump")
	
	move_and_slide()
