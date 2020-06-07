import pedidos.*
import otrosRodados.*
import trafic.*

object dependencia {
	const flota = []
	var property cantidadDeEmpleados = 0
	var property pedido = []
	

	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	
	method quitarDeFlota(rodado){
		flota.remove(rodado)
	} 
	
	method  pesoTotalFlota(){
		return flota.sum({pesos => pesos.peso()})
	}
	
	method estaBienEquipada(){
		return flota.size() >= 3 and flota.all({ vel => vel.velocidadMaxima() >= 100})
	}
	
	method capacidadTotalEnColor(color){
		return flota.filter({losDecolor => losDecolor.color() == color}).sum({cap => cap.capacidad()})
	}
	
	method colorDelRodadoMasRapido(){
		return flota.max({masRapido => masRapido.velocidadMaxima()}).color()
	}
	
	method  capacidadFaltante(){
		return  (cantidadDeEmpleados - flota.sum({cap => cap.capacidad()})).max(0)
	}
	
	method esGrande(){
		return cantidadDeEmpleados >= 40 and flota.size() == 5
	}
	
	method totalDePasajeros(){
		return pedido.sum({ total => total.cantidadDePasajeros()})
	}
	
	
	////////////////// 	RODADOS CON GAME /////////////////////////
	
	method pedidosInsatisfechos(){
		return pedido.filter({ ped => not self.pedidoDescartado(ped) })
	}
	
	method pedidoDescartado(unPedido){
		return flota.any({unAuto => unPedido.puedeSatisfacer(unAuto)})
	}

	
	method relajarTodosLosPedidos(){
		return pedido.forEach({unPedido => unPedido.relajar()})
	}
	

	method colorIncompatible(color){
		return pedido.all({col => col.coloresIncompatibles().contains(color)})
	
	 }
}
