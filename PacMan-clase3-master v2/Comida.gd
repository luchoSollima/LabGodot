extends Node2D

func consumed(_area):
	Scoreboard.scoreGain()
	queue_free()
