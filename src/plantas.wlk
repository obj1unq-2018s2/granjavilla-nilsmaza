import wollok.game.*

class Maiz {
	
	var esAdulta = false 
	 
	method imagen() {
		if (not esAdulta) return "corn_baby.png"
	 	else return "corn_adult.png"
		}
		
	method regar() { esAdulta = true }
	//method puedeserCosechada() = esAdulta
	
}

class Trigo {
	
	//var etapa = 0
	//method imagen() ="wheat_" + etapa.toString() + ".png"
	//method regar() { etapa =(etapa + 1) % 4 }
	//method puedeserCosechada() = etapa > 2

	var evolucion = 0
	var forma = ["wheat_0.png","wheat_1.png","wheat_2.png","wheat_3.png" ]
	
	method imagen(){ return forma.get(evolucion) }
		
	method regar() { if(evolucion < 3 ) evolucion +=1 }
	
			
}

class Tomaco {
	
	var posicion = game.colliders(self).anyOne()
	
	method imagen() = "tomaco.png"
	
	method regar() { game.removeVisual(posicion.up()) }	
	
	//method puedeserCosechada() = true
	//method regar() {if(posicion.y < 9){ game.removeVisual(posicion.up(1)) }	
}