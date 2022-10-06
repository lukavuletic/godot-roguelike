extends Node2D

func _ready():
	print("game instance")
	var worldScene = load("res://GameLogic/MapGenerator/World.tscn")
	var world = worldScene.instance()
	add_child(world)
	var playerScene = load ("res://Entities/Player/PlayerScene.tscn")
	var player = playerScene.instance()
	add_child(player)
