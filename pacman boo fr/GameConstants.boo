namespace terman_boo

import System

static class Constants:
	
	public final WALL = ConsoleColor.Blue
	public final PELLET = ConsoleColor.White
	public final SPECIAL_PELLET = ConsoleColor.Green
	public final EMPTY = ConsoleColor.Black
	public final PACMAN = ConsoleColor.Yellow
	
	public final PELLET_POINTS as byte = 10
	public final SPECIAL_PELLET_POINTS as byte = 50
	public final GHOST_POINTS as byte = 200
	
	def IsGhost(color as ConsoleColor):
		
		arr = [WALL, PELLET, SPECIAL_PELLET, EMPTY, PACMAN]
		
		return not arr.Contains(color)
