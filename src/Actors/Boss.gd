
extends Actor
@onready var stomp_area: Area2D = $StompArea2D

@export var score: = 100




var health = 100
var damage = 10

func _ready():
	pass


func take_damage(damage_amount):
	health -= damage_amount
	if health <= 0:
		die()


func die():
	queue_free()
