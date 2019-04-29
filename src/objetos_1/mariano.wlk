import golosinas.*

object mariano {
	var golosinas = #{}
	var property golosinasDeseadas = #{}
	var property gustosDeseados = #{}
	//var gustos = []
	
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(golosina) {
		golosinas.add(golosina)
		//gustos.add(golosina.gusto())
	}
	method desechar(golosina) {
		golosinas.remove(golosina)
		//gustos.remove(golosina.gusto())
	}
	method golosinas() = golosinas
	
	method probarGolosinas() {
		golosinas.forEach{golosina => golosina.mordisco()}
	}
	
	method hayGolosinasSinTACC(){
		return golosinas.any{golosina=>golosina.libreGluten()}
	}
	
	method preciosCuidados(){
		return golosinas.all{golosina=>(golosina.precio()<=10)}
	}
	
	method golosinaDeSabor(unSabor){
		return golosinas.find{ golosina => golosina.gusto()==unSabor}
	}
	
	method golosinasDeSabor(unSabor){
		return golosinas.filter{golosina=> golosina.gusto()==unSabor}
	}
	
	method sabores(){
		return golosinas.map{ golosina => golosina.gusto()}.asSet()
	}
	
	method golosinaMasCara(){
		return golosinas.max{golosina=>golosina.precio()}
	}
	
	method pesoGolosinas(){
		return golosinas.sum{golosina=>golosina.peso()}
	}
	
	method golosinasFaltantes(){
		return golosinasDeseadas.difference(golosinas)
		//#{1, 2}.difference(#{5, 2}) => #{1}
	}
	
	/*method gustosFaltantes(){
		return gustosDeseados.difference(golosinas.filter(golosina => golosina.gusto()))
	}*/
	
	/*method difference(another) =
	 	self.filter({it => not another.contains(it)})*/
}

