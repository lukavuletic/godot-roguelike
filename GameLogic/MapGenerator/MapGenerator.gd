extends Node2D

var tile = preload("res://GameLogic/MapGenerator/Tile.tscn")

const dir = [Vector2.RIGHT, Vector2.LEFT, Vector2.UP, Vector2.DOWN]

var gridSize = 7
var gridSpread = 300
var gridSteps = 20
var grid = []

func _ready():
	print("map gen")
	randomize()
	createLevel()
	
func createLevel():
	var currentPix = Vector2(0, 0)
	var currentPos = Vector2(0, 0)
	
	var currentDir = Vector2.RIGHT
	var lastDir = currentDir * -1
	
	for i in range(0, gridSteps):
		var tempDir = dir.duplicate()
		tempDir.shuffle()
		var d = tempDir.pop_front()
		
		while(abs(currentPos.x + d.x) > gridSize or abs(currentPos.y + d.y) > gridSize or d == lastDir * -1):
			tempDir.shuffle()
			d = tempDir.pop_front()
			
		currentPos += d
		currentPix += d * gridSpread
		lastDir = d
		
		var t = tile.instance()
		t.position = currentPix
		
		add_child(t)
		grid.append(t)
	
