extends CharacterBody2D

const Gravedad = 98

func _ready():
	velocity.x = -70


func _physics_process(delta):
	velocity.y += Gravedad
	
	
	if is_on_wall():
		if !$Sprite2D.flip_h:
			velocity.x = 70
		else: 
			velocity.x = -70
			
	if velocity.x < 0:
		$Sprite2D.flip_h = false
	elif velocity.x > 0:
		$Sprite2D.flip_h = true


		
	move_and_slide()
