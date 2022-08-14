namespace pacman_boo_fr

import System
import ConsolePaint
import System.Drawing
import System.Threading
import System.Diagnostics

Console.SetWindowSize(100, 30)

carte = ConsoleImage(Bitmap("pacman map.png"))

fantomes = List[of Personnage]()
pacman as Personnage
nbGranules as ushort

# Trouve pacman et les fantômes
for y in range(carte.Height):
	
	for x in range(carte.Width):
		
		 if Constantes.EstFantôme(carte[x, y]):
		 	#print "ghost x:$x y:$y"
		 	fantomes.Add(Personnage(x, y, carte[x, y]))
		 	
		 elif carte[x, y] == Constantes.PACMAN:
		 	#print "pacman x:$x y:$y"
		 	pacman = Personnage(x, y, carte[x, y])
		 	
		 elif carte[x, y] == Constantes.GRANULE or carte[x, y] == Constantes.GRANULE_SPÉCIALE:
		 	++nbGranules
			
gameOver = false
Console.CursorVisible = false

def bougerPacman():
	
	while not gameOver:
		
		input = Console.ReadKey(true).Key
		
		if input == ConsoleKey.Escape:
			gameOver = true
			
		elif input == ConsoleKey.W:
			pacman.DirectionPrésente = Directions.Haut
			
		elif input == ConsoleKey.S:
			pacman.DirectionPrésente = Directions.Bas
			
		elif input == ConsoleKey.A:
			pacman.DirectionPrésente = Directions.Gauche
			
		elif input == ConsoleKey.D:
			pacman.DirectionPrésente = Directions.Droite
			
			
Thread(bougerPacman).Start()

sw = Stopwatch()
sw.Start()

while not gameOver:
	
	carte.Paint()
	
	if sw.ElapsedMilliseconds > 100:
		
		pacman.Bouger(carte)
		carte[pacman.X, pacman.Y] = Constantes.PACMAN
		sw.Restart()
		
	
		
	
Console.ReadKey(true)
