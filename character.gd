# this references the properties that this script has access to.
extends Node2D

@onready var sprite = get_node("Sprite2D")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hello World!")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# TODO: Create Two Input Maps for "left" and "right"
		# HINT: Top Bar, -> Project Project Settings -> Input Map Tab
	# TODO: Program the "left" and "right" features
		# HINT: position.x -= 10
		# HINT: position.y += 10
	# When the input action "up" is pressed, we do the following:
	if Input.is_action_pressed("left"):
		#print("Go Left")
		position.x -= 10
	if Input.is_action_pressed("right"):
		#print("Go Right")
		position.x += 10
	if Input.is_action_pressed("up"):
		#print("Go Up")
		position.y -= 10
	# When the input action "down" is pressed, we do the following:
	if Input.is_action_pressed("down"):
		#print("Go Down")
		position.y += 10
	pass
