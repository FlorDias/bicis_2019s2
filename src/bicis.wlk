import accesorios.*

class Bicicleta {
	var id = 0
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method altura() { return rodado * 2.5 + 15 }
	
	method velocidadDeCrucero() { 
		return if (largo > 120) { rodado + 6} else {rodado + 2}
	}
	
	method carga () { return accesorios.sum ({carga => carga.carga()})}
	
	method peso() {return rodado / 2 + accesorios.sum({ accesorio =>accesorio.peso()})}
	
	method tieneLuz () { return accesorios.any ({ a => a.esLuminoso()})}

	method cantidadAccesoriosLivianos () { return accesorios.count ({ a => a.peso() < 1})}
	
	method ponerAccesorio (accesorio) { accesorios.add(accesorio) }
	
	method sacarAccesorio (accesorio) { accesorios.remove(accesorio) }
	
	method id () { return id }
	
	method id (numero) { id = numero }
}
