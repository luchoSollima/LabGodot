extends Node2D

@onready var velocidad: float = 7
@onready var sprite = $PacMan
@onready var visibleNotifier = $VisibleOnScreenNotifier2D
@onready var texto = $"../Label"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += velocidad 
	if !visibleNotifier.is_on_screen():
		teleport()
	if Input.is_action_just_released("flip"):
		flip()

func flip():
	velocidad *= -1
	sprite.flip_h = !sprite.flip_h

func teleport():
	var posicionFinalDeLaPantallaEnX = get_viewport_rect().size.x
	if position.x < 0:
		position.x = posicionFinalDeLaPantallaEnX -10
	else:
		position.x = 10
