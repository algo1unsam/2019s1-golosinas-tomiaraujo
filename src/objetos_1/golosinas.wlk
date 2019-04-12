object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 30
	
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 }
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
}

object caramelo {
	var peso = 5
	
	method precio() { return 1 }
	method peso() { return peso }
	method mordisco() { peso = peso - 1}
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object chupetin {
	var peso = 7
	
	method precio() { return 2 }
	method peso() { return peso }
	method mordisco() {
		if(peso>=2){
	
		peso = peso *0.9
		
		}
	}
	method gusto() { return "naranja" }
	method libreGluten() { return true }
}

object oblea {
	var peso = 250
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() {
		if(peso > 70){
			peso = peso * 0.5
		}
		else
			peso = peso * 0.75
	}
	method gusto() { return "vainilla" }
	method libreGluten() { return false }
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method precio() {
		return pesoInicial * 0.5
	}
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
	method mordisco() { pesoInicial = pesoInicial - 2}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() {return golosinaInterior.precio()+2 }
	method peso() {return golosinaInterior.peso()+pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { golosinaInterior.libreGluten()}	
}

object tuttifrutti {
	// como manejar el cambio de sabor ??
	var peso = 5
	var cantMordiscos = 0
	var property libreGluten = true
	
	method precio() {
		if(libreGluten) {return 7}
		else {return 10}
	}
	method peso() { return peso }
	method mordisco() {
		cantMordiscos = cantMordiscos + 1
	}
	method gusto() {
		if(cantMordiscos == 0){
			return "frutilla"
			}
		if(cantMordiscos == 1){
			return "chocolate"
		}
		if(cantMordiscos == 2){
			return "naranja"
		}
		else
			return "frutilla"
	}
	
}

