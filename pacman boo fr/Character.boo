namespace terman_boo

import System
import ConsolePaint

class Character:
	
	private direction = Directions.Left
	private posX as int
	private posY as int
	private color as ConsoleColor
	
	X:
		get:
			return posX
			
	Y:
		get:
			return posY
	
	CurrentDirection:
		get:
			return direction
			
		set:
			direction = value
			
	def constructor(posX as int, posY as int, color as ConsoleColor):
		
		self.posX = posX
		self.posY = posY
		self.color = color
		
	virtual def Move(map as ConsoleImage):
		
		oldX = posX
		oldY = posY
		
		if direction == Directions.Up:
			if posY - 1 > 0 and map[posX, posY - 1] != Constants.WALL:
				--posY
			
		elif direction == Directions.Down:
			if posY + 1 < map.Height and map[posX, posY + 1] != Constants.WALL:
				++posY
				
		elif direction == Directions.Right:
			if posX + 1 == map.Width:
				posX = 0
				
			elif map[posX + 1, posY] != Constants.WALL:
				++posX
				
		else:
			if posX - 1 == -1:
				posX = map.Width - 1
				
			elif map[posX - 1, posY] != Constants.WALL:
				--posX
				
		if oldX != posX or oldY != posY:
			map[oldX, oldY] = Constants.EMPTY
