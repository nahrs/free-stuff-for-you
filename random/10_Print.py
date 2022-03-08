#    10Print in py			
#								
# Written by Raul Santos	    
# https://git.nahrs.dev		    
#								
# inspo from Daniel Shiffman    
# https://youtu.be/bEyTZ5ZZxZs  
#								
# wrote this on a whim 3/7/2022 

from turtle import Screen, Turtle
import random, math
import tkinter as Tk

wn = Screen()
wn.setup(width=1920, height=1080, startx=810, starty=100)
wn.title("10 Print")
wn.bgcolor("black")
wn.colormode(255)
wn.tracer(3)
t = Turtle()
t.pencolor("#ffffff")
t.speed(0)
spacing = 20

width = wn.window_width()
height = wn.window_height()
w = -width / 2
h = height / 2 - spacing
x = -width / 2
y = height / 2 - spacing
t.pu()
t.ht()
t.goto(w, h)

def randomPColor():
	t.pencolor("#" + str(math.floor(random.random() * 888888) + 100000))

def fdSlash():
	t.goto(x, y)
	t.pd()
	t.goto(x + spacing, y + spacing)
	t.pu()

def bkSlash():
	t.goto(x, y + spacing)
	t.pd()
	t.goto(x + spacing, y)
	t.pu()

t.width(spacing * .10)
prob = .5

while(True):
	if (random.random() < prob):
		fdSlash()
	else:
		bkSlash()
	x = x + spacing
	prob += .009
	#randomPColor()
	if x > width / 2:
		t.pu()
		x = w
		y -= spacing
		prob = .5
	if y < - height / 2:
		t.goto(w, h)
		x = w
		y = h
		wn.update()
		Tk.mainloop()
		
