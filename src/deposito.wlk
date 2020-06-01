import bicis.*

class Deposito {
	const bicicletas = []
	var idsBicis = 1
	
	method sacarBici (bici) { bicicletas.remove(bici) }
	
	method agregarBici (bici) {
		bici.id(idsBicis)
		bicicletas.add(bici)
		idsBicis += 1
	}
	
	method bicisRapidas() { return bicicletas.filter ({bici => bici.velocidadDeCrucero() > 25 }) }	
	
	method coleccionDeMarcas() {
		const coleccion = #{}
		coleccion.addAll(bicicletas.map({bici => bici.marca()}))
		return coleccion
	}

	method esNocturno() { return bicicletas.all ({ bici => bici.tieneLuz()}) }
	
	method puedeLlevarCarga (kilos) { return bicicletas.any ({ bici => bici.carga() > kilos }) }
	
	method marcaDeBiciMasRapida() { return self.bicisRapidas().max({bici => bici.velocidadDeCrucero()}).marca()}
	
	method cargaTotalBicisLargas() { return bicicletas.filter ({ bici => bici.largo() > 170}).sum({bici => bici.carga()})}
	
	method sinAccesorios() { return bicicletas.count({bici => bici.accesorios() == null})}
	
	method bicisCompanierasDe (unaBici) { return bicicletas.filter({bici => bici.id() != unaBici.id() and bici.largo().between(unaBici.largo()-10,unaBici.largo()+10) and bici.marca() == unaBici.marca()})}
  		
}
