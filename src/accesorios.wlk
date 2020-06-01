class Farolito {
	
	method peso () { return 0.5 }
	
	method carga () { return 0 }
	
	method esLuminoso() { return true}
}

class Canasto {
	var  volumen
	
	method volumen (valor) { volumen = valor }
	
	method peso() { return volumen / 10 }
	
	method carga () { return volumen * 2 }
	
	method esLuminoso() { return false}
}

class Morral {
	var property largo
	var property tieneOjoDeGato 
	
	method peso () { return 1.2 }
	
	method carga () { return largo / 3 }
	
	method esLuminoso() { 
		return  tieneOjoDeGato
	}
}
