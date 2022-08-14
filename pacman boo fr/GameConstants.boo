namespace pacman_boo_fr

import System

static class Constantes:
	
	public final MUR = ConsoleColor.Blue
	public final GRANULE = ConsoleColor.White
	public final GRANULE_SPÉCIALE = ConsoleColor.Green
	public final VIDE = ConsoleColor.Black
	public final PACMAN = ConsoleColor.Yellow
	
	public final GRANULE_POINTS as byte = 10
	public final GRANULE_SPÉCIALE_POINTS as byte = 50
	public final FANTÔME_POINTS as byte = 200
	
	def EstFantôme(color as ConsoleColor):
		
		arr = List[of ConsoleColor]()
		arr.Add(MUR)
		arr.Add(GRANULE)
		arr.Add(GRANULE_SPÉCIALE)
		arr.Add(VIDE)
		arr.Add(PACMAN)
		
		return not arr.Contains(color)