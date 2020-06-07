import wollok.game.*
import colores.*

object keyboards{
	method todosLosDe_DeColor_(lista, color){
		return lista.forEach({auto => auto.image(color.image())})
	}
	
	method agregarVehiculo(unAuto){
		game.addVisualCharacter(unAuto)
	}
	
}
	
	
