extends Node


func saludar():
	print("Hola")

func empezarJuego():
#	Cambiamos la escena menu, al juego.
	get_tree().change_scene_to_file("res://world.tscn")
	Scoreboard.reset()

func cerrarJuego():
#	Sale del menu y cierra el programa.
	get_tree().quit()

func empezarFisicas():
	get_tree().change_scene_to_file("res://world_(2).tscn")
