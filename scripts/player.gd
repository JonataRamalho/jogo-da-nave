extends CharacterBody2D

@export var agility = 300

func _physics_process(_delta):
	var direction = Vector2(Input.get_axis("move_left",
	 "move_right"), Input.get_axis("move_up", "move_down"))
	velocity = direction * agility
	move_and_slide()
