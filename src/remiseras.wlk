import clientes.*
object roxana {
	method cobrarViajeA(unCliente,kms) {
		return unCliente.precioPorKilometro() * kms
	}
}
object gabriela {
	method cobrarViajeA(unCliente,kms) {
		return unCliente.precioPorKilometro() * 0.2 * kms
	}
}
object mariela {
	method cobrarViajeA(unCliente,kms) {
		return 50.max( unCliente.precioPorKilometro() *kms )
	}
}
object juana {
	method cobrarViajeA( _ , kms) {
		return if (kms <=8){100} else {200}
	}
}
object lucia {
	var remplazoRemisera
	method remplazarA() = remplazoRemisera
	method remplazarA(unaRemisera) {
		if (self ==unaRemisera)
		 self.error("No se puede reemplazar a si mismo")
		 remplazoRemisera = unaRemisera
	}
	method cobrarViajeA(unaRemisera,kms) {
	 unaRemisera.cobrarViajeA()
	}
}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}