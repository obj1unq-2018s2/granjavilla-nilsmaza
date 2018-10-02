import wollok.game.*
import plantas.*

object hector {
	
	//para poder ver la imagen y la posicion en el tablero
	
	var property posicion = game.at(2,2)
	method imagen() = "player.png"

	//metodo que reacciona ante una tecla 
	
	method plantaMaiz() { game.addVisualIn(new Maiz(),self.posicion().clone()) }
	
	method plantaTomaco() { game.addVisualIn(new Tomaco(),self.posicion().clone())}
	
	method plantaTrigo() { game.addVisualIn(new Trigo(),self.posicion().clone())}
	
	method regarPlanta() { 
		var laPlanta = game.colliders(self).anyOne()
		
		laPlanta.regar()
	}
	
}


