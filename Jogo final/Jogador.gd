extends KinematicBody2D

onready var correndo = $Sprite/AnimationPlayer
var gravidade = 700
var pulo = 550
var velocidade = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("pular") and is_on_floor():
		velocidade.y -= pulo
		
	velocidade.y += gravidade * delta
	velocidade = move_and_slide(velocidade, Vector2.UP)

func _ready():
	correndo.play("correndo")
		
	
