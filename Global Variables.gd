extends Node

const  MaxBounce = 3

var BounceRemain = MaxBounce

@export var PlayerItem = "None"

var FacingDirection = "Down"

var BoomerangDirection = "Down"

#Number of Torches Per Room
var TestRoomTorches = 4
var Level1Torches = 2
var Level2Torches = 1
var Level3Torches = 1
var Level4Torches = 1
var Level5Torches = 2

#Level Complete
var TestRoomComplete = false
var Level1Complete = false
var Level2Complete = false
var Level3Complete = false
var Level4Complete = false
var Level5Complete = false

#Unlcok door variables
var UnlockRoomLeft = false
var UnlockRoomRight = false


#variables for selecting items
var SelectBoomerang = false
var SelectArrow = false
