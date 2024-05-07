extends Node

@onready var label = Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Scoreboard.scoreGain
