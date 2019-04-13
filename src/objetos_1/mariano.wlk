object mariano {
	var golosinas = #{}
	var gustos = []
	
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(golosina) {
		golosinas.add(golosina)
		gustos.add(golosina.gusto())
	}
	method desechar(golosina) {
		golosinas.remove(golosina)
		gustos.remove(golosina.gusto())
	}
	method golosinas() = golosinas
	
	method probarGolosinas() {
		golosinas.forEach{golosina => golosina.mordisco()}
	}
	
	method hayGolosinasSinTACC(){
		golosinas.any{golosina=>golosina.libreGluten()}
	}
	
	method preciosCuidados(){
		golosinas.all{golosina=>(golosina.precio()<=10)}
	}
	
	method golosinaDeSabor(unSabor){
		golosinas.find{golosina=>(golosina.gusto()==unSabor)}
	}
	
	method golosinasDeSabor(unSabor){
		golosinas.all{golosina=>(golosina.gusto()==unSabor)}
	}
	
	method sabores(){
		return gustos.asSet()
	}
	
	method golosinaMasCara(){
		golosinas.max{golosina=>golosina.precio()}
	}
}

