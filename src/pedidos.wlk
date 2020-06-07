import dependencia.*
import otrosRodados.*
import colores.*

class PedidoDeTraslado {
	var property distanciaARecorrer = 0
	var property tiempoMaximo = 0
	var property coloresIncompatibles = []
	var property cantidadDePasajeros = 0
	
	
	method velocidadRequerida(){
		return distanciaARecorrer / tiempoMaximo
	}
	
	method puedeSatisfacer(auto){
		return (auto.velocidadMaxima() - self.velocidadRequerida()).abs() > 10
				and auto.capacidad() >= cantidadDePasajeros
					and  not coloresIncompatibles.contains({col => col.color() == auto.color()})
 	}


	method acelerar(){
		return tiempoMaximo += 1
	}
	
	method relajar(){
		return tiempoMaximo -= 1
	}

}
