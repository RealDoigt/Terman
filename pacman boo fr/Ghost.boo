namespace terman_boo

import System
import ConsolePaint

class Ghost(Character):
	
	enum Role:
		Shadow
		Speedy
		Bashful
		Pokey
		
	private role as Role
	private occupiedCell as ConsoleColor
	
	public def constructor(posX as int, posY as int, color as ConsoleColor, role as Role):
		super(posX, posY, color)
		
		self.role = role
		
	override def Move(map as ConsoleImage):
		
		def swapCellContents(newX as int, newY as int):
			
			if newX < map.Width and newX >= 0 and newY < map.Height and newY >= 0:
				
				if map[newX, newY] == Constants.PELLET:
					map[X, Y] = occupiedCell
					occupiedCell = Constants.PELLET
					
				elif map[newX, newY] == Constants.SPECIAL_PELLET:
					map[X, Y] = occupiedCell
					occupiedCell = Constants.SPECIAL_PELLET
					
				elif map[newX, newY] == Constants.EMPTY:
					map[X, Y] = occupiedCell
					occupiedCell = Constants.EMPTY
		
		if CurrentDirection == Directions.Up:
			swapCellContents(X, Y - 1)
				
		elif CurrentDirection == Directions.Down:
			swapCellContents(X, Y + 1)
				
		elif CurrentDirection == Directions.Left:
			swapCellContents(X - 1, Y)
			
		else:# CurrentDirection == Directions.Right:
			swapCellContents(X + 1, Y)
			
		if role == Role.Bashful:
			pass
			
		elif role == Role.Pokey:
			pass
			
		elif role == Role.Shadow:
			pass
			
		elif role == Role.Speedy:
			pass
		
		super.Move(map)
	

