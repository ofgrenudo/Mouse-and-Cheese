extends Node2D

@onready var soundEffect = get_node("sound_effect")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	if (visible == true):
		soundEffect.play();
		print("Cheese Touched!!!")
		visible = false
	
