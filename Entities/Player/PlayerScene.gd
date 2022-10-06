extends KinematicBody2D

var MOVEMENT_SPEED = 100

func begin_play():
	print("game instance")

func get_input(e):
	if Input.is_action_pressed("ui_right"):
		position.x += 1
	elif Input.is_action_pressed("ui_left"):
		position.x -= 1
	elif Input.is_action_pressed("ui_down"):
		position.y += 1
	elif Input.is_action_pressed("ui_up"):
		position.y -= 1
	elif Input.is_action_pressed("ui_up_left"):
		position.x -= 1
		position.y -= 1
	elif Input.is_action_pressed("ui_up_right"):
		position.x += 1
		position.y -= 1
	elif Input.is_action_pressed("ui_down_left"):
		position.x -= 1
		position.y += 1
	elif Input.is_action_pressed("ui_down_right"):
		position.x += 1
		position.y += 1

func _unhandled_input(event):
	get_input(event)
