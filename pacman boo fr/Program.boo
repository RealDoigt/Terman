namespace pacman_boo_fr

import System
import ConsolePaint
import System.Drawing
import System.Threading
import System.Diagnostics

Console.SetWindowSize(100, 30)

map = ConsoleImage(Bitmap("pacman map.png"))

ghosts = List[of Character]()
pacman as Character
pellets as ushort

# Trouve pacman et les fantômes
for y in range(map.Height):
	
	for x in range(map.Width):
		
		 if Constants.IsGhost(map[x, y]):
		 	#print "ghost x:$x y:$y"
		 	ghosts.Add(Character(x, y, map[x, y]))
		 	
		 elif map[x, y] == Constants.PACMAN:
		 	#print "pacman x:$x y:$y"
		 	pacman = Character(x, y, map[x, y])
		 	
		 elif map[x, y] == Constants.PELLET or map[x, y] == Constants.SPECIAL_PELLET:
		 	++pellets
			
gameOver = false
Console.CursorVisible = false

def movePacman():
	
	while not gameOver:
		
		input = Console.ReadKey(true).Key
		
		if input == ConsoleKey.Escape:
			gameOver = true
			
		elif input == ConsoleKey.W:
			pacman.CurrentDirection = Directions.Up
			
		elif input == ConsoleKey.S:
			pacman.CurrentDirection = Directions.Down
			
		elif input == ConsoleKey.A:
			pacman.CurrentDirection = Directions.Left
			
		elif input == ConsoleKey.D:
			pacman.CurrentDirection = Directions.Right
			
			
Thread(movePacman).Start()

sw = Stopwatch()
sw.Start()

while not gameOver:
	
	map.Paint()
	
	if sw.ElapsedMilliseconds > 100:
		
		pacman.Move(map)
		map[pacman.X, pacman.Y] = Constants.PACMAN
		sw.Restart()
		
	
		
	
Console.ReadKey(true)
