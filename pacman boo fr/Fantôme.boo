namespace pacman_boo_fr

import System
import ConsolePaint

class Fantôme(Personnage):
	
	enum Rôle:
		Shadow
		Speedy
		Bashful
		Pokey
		
	private rôle as Rôle
	private celluleOccupée as ConsoleColor
	
	public def constructor(posX as int, posY as int, couleur as ConsoleColor, rôle as Rôle):
		super(posX, posY, couleur)
		
		self.rôle = rôle
		
	override def Bouger(carte as ConsoleImage):
		
		def échangerContenuCellule(nouveauX as int, nouveauY as int):
			
			if nouveauX < carte.Width and nouveauX >= 0 and nouveauY < carte.Height and nouveauY >= 0:
				
				if carte[nouveauX, nouveauY] == Constantes.GRANULE:
					carte[X, Y] = celluleOccupée
					celluleOccupée = Constantes.GRANULE
					
				elif carte[nouveauX, nouveauY] == Constantes.GRANULE_SPÉCIALE:
					carte[X, Y] = celluleOccupée
					celluleOccupée = Constantes.GRANULE_SPÉCIALE
					
				elif carte[nouveauX, nouveauY] == Constantes.VIDE:
					carte[X, Y] = celluleOccupée
					celluleOccupée = Constantes.VIDE
		
		if DirectionPrésente == Directions.Haut:
			échangerContenuCellule(X, Y - 1)
				
		elif DirectionPrésente == Directions.Bas:
			échangerContenuCellule(X, Y + 1)
				
		elif DirectionPrésente == Directions.Gauche:
			échangerContenuCellule(X - 1, Y)
			
		else:# DirectionPrésente == Directions.Droite:
			échangerContenuCellule(X + 1, Y)
			
		if rôle == Rôle.Bashful:
			pass
			
		elif rôle == Rôle.Pokey:
			pass
			
		elif rôle == Rôle.Shadow:
			pass
			
		elif rôle == Rôle.Speedy:
			pass
		
		super.Bouger(carte)
	

