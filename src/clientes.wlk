object ludmila {
	method precioPorKilometro () = 18
		

}
object anaMaria {
	var economiaEstable = true
	method economiaEstable() = economiaEstable
	method cambioEconomico() {
	  economiaEstable = not economiaEstable
	}
	
	method precioPorKilometro(){
		return if (economiaEstable){30}else{25}
	}
}

object teresa {
	var property precioPorKilometro = 22
}
object melina {
	var trabajaPara
	method trabajaPara() = trabajaPara
	method trabajaPara(unaClienta) {
		if (self == unaClienta)
			self.error("Error de trabajaPara")
		trabajaPara = unaClienta
		}
	method precioPorKilometro() {
		return trabajaPara.precioPorKilometro() - 3 
	}
}