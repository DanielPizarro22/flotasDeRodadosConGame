import colores.*
import wollok.game.*

class ChevroletCorsa{
	var property color 
	var property position = game.at(0,0)
	var property image
	const posicionesEnDondeEstuvo = []
	
	
		/* WOLLOK GAME  */
		
	method cambiarPosicion(nuevaPosicion){
		position = nuevaPosicion
		posicionesEnDondeEstuvo.add(nuevaPosicion)
	}
	
	method pasoPor(posicion){
		return posicionesEnDondeEstuvo.contains(posicion)
	}
	
	method pasoPorFila(numero){
		return posicionesEnDondeEstuvo.any({num => num.x() == numero})	
	}
	
	method recorrioFilas(lista_de_numeros){
		return posicionesEnDondeEstuvo.map({ pos => pos.x()}).asSet() == lista_de_numeros.asSet()
	}
	
		
	method capacidad(){
		return 4
	}
	method velocidadMaxima(){
		return 150
	}
	method peso(){
		return 1300
	}
	
}


class AutoEspecial{
	var property color
	var property capacidad
	var property velocidadMaxima
	var property peso
}



class RenaultKwid{
	var poseeTanque = false
	
	method colocarTanque(){
		poseeTanque = true
	}
	method quitarTanque(){
		poseeTanque = false
	}
	
	method capacidad(){
		if(not poseeTanque){
			return 4
		}
		else{
			return 3
		}
	}
	method velocidadMaxima(){
		if(not poseeTanque){
			return 110
		}
		else{
			return 120
		}
	}
	method peso(){
		if(not poseeTanque){
			return 1200
		}
		else{
			return 1200 + 150
		}
	}
	
	method color(){
		return azul
	}
}
