extends RigidBody2D

@export var MIN_SPEED = 150
@export var MAX_SPEED = 250
var mob_type = ["fly" , "swim ", "walk"]

func _ready():
	$AnimatedSprite.animation = mob_type[randi() % mob_type.size()]
	$AnimatedSprite.play()
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
