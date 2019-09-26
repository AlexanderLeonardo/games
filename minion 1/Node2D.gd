extends KinematicBody2D

#Declare member variables here. Examples:
const ACCEL = 1500
const MAX_SPEED = 500
const FRICTION = 0.5
export(int) var GRAVITY = 400
export(int) var JUMP_SPEED = 5000

#var run_speed = 350
#var jump_speed = -1000
#var gravity = 0

var acc = Vector2()
var velocity = Vector2() # *

# Called when the node enters the scene tree for the first time.
func _ready():
	#set_process(true)
	pass
	
"""
func get_input():
    velocity.x = 0
    var right = Input.is_action_pressed('ui_right')
    var left = Input.is_action_pressed('ui_left')
    var jump = Input.is_action_just_pressed('ui_select')

    if is_on_floor() and jump:
        velocity.y = jump_speed
    if right:
        velocity.x += run_speed
    if left:
        velocity.x -= run_speed
""" 

func _physics_process(delta):
    acc.y = GRAVITY
	
    if Input.is_action_pressed("ui_left"):
	    acc.x = -ACCEL
    else:
	    acc.x = 0
		
    if acc.x == 0:
		#acc.x = vel.x * FRICTION * delta
	    velocity.x = max(abs(velocity.x)* FRICTION, 0) * sign(velocity.x)
    else:
	    velocity.x -= -acc.x
		
    if Input.is_action_pressed("ui_right"):
	    acc.x = ACCEL
    else: 
	    acc.x = 0
		
    if acc.x == 0:
		#acc.x = vel.x * FRICTION * delta
	    velocity.x = max(abs(velocity.x)* FRICTION, 0) * sign(velocity.x)
    else:
	    velocity.x += acc.x
		
    if Input.is_action_just_pressed("ui_up") and is_on_floor():
	    velocity.y = -JUMP_SPEED
		
	#vel += acc * delta
    velocity.y += acc.y 
    velocity.x = clamp(velocity.x, -MAX_SPEED, MAX_SPEED)
    velocity = move_and_slide(velocity, Vector2.UP)
