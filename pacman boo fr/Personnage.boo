namespace pacman_boo_fr

import System
import ConsolePaint

class Personnage:
	
	private direction = Directions.Droite
	private posX as int
	private posY as int
	private couleur as ConsoleColor
	
	X:
		get:
			return posX
			
	Y:
		get:
			return posY
	
	DirectionPrésente:
		get:
			return direction
			
		set:
			direction = value
			
	def constructor(posX as int, posY as int, couleur as ConsoleColor):
		
		self.posX = posX
		self.posY = posY
		self.couleur = couleur
		
	virtual def Bouger(carte as ConsoleImage):
		
		oldX = posX
		oldY = posY
		
		if direction == Directions.Haut:
			if posY - 1 > 0 and carte[posX, posY - 1] != Constantes.MUR:
				--posY
			
		elif direction == Directions.Bas:
			if posY + 1 < carte.Height and carte[posX, posY + 1] != Constantes.MUR:
				++posY
				
		elif direction == Directions.Droite:
			if posX + 1 == carte.Width:
				posX = 0
				
			elif carte[posX + 1, posY] != Constantes.MUR:
				++posX
				
		else:
			if posX - 1 == -1:
				posX = carte.Width - 1
				
			elif carte[posX - 1, posY] != Constantes.MUR:
				--posX
				
		if oldX != posX or oldY != posY:
			carte[oldX, oldY] = Constantes.VIDE