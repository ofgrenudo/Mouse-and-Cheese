extends Node2D

@onready var cheeseBox = get_node("CheeseBox")

@onready var cheeseOne = cheeseBox.get_child(1, true)
@onready var cheeseTwo = cheeseBox.get_child(2, true)
@onready var cheeseThree = cheeseBox.get_child(3, true)
@onready var cheeseFour = cheeseBox.get_child(4, true)
@onready var cheeseFive = cheeseBox.get_child(0, true)

@onready var scoreLabel = get_node("ScoreLabel")

@onready var cheeseOne_check = false
@onready var cheeseTwo_check = false
@onready var cheeseThree_check = false
@onready var cheeseFour_check = false
@onready var cheeseFive_check = false

@onready var dustBunny = get_node("DustBunny")

var score
var health

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	score = 0
	health = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(dustBunny.touched):
		#print("restart game")
		#get_tree().reload_current_scene()
		get_node("Lose").visible = true
		if (get_node("Lose").flag == true):
			get_tree().reload_current_scene()
		
	if(score == 5):
		get_node("Win").visible = true
		if (get_node("Win").flag == true):
			get_tree().reload_current_scene()
	
	scoreLabel.text = str(score)
	if(!cheeseOne_check):
		if (!cheeseOne.visible):
			score += 1
			cheeseOne_check = true
	if(!cheeseTwo_check):
		if (!cheeseTwo.visible):
			score += 1
			cheeseTwo_check = true
	if(!cheeseThree_check):
		if (!cheeseThree.visible):
			score += 1
			cheeseThree_check = true
	if(!cheeseFour_check):
		if (!cheeseFour.visible):
			score += 1
			cheeseFour_check = true
	if(!cheeseFive_check):
		if (!cheeseFive.visible):
			score += 1
			cheeseFive_check = true
	
	print("SCORE -> ", score)
