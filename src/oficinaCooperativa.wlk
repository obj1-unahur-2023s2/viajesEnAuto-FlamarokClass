object oficinaCooperativa {
	var property remiseriaPrincipal
	var property remiseriaSecundaria
	
	method asignarRemiseras(unaRemisera, otraRemisera) {
		remiseriaPrincipal = unaRemisera
		remiseriaSecundaria = otraRemisera
	}
	method cambiarPrimerRemiserarPor(remisera) {
		remiseriaPrincipal= remisera
	}
	method cambiarSegundoRemiseraPor(remisera) {
		remiseriaSecundaria = remisera
	}
	method intercambiarRemiseras() {
		self.asignarRemiseras(remiseriaSecundaria,remiseriaPrincipal)
	}
	method remiseraElegidaParaViaje(cliente, kms){
		if (remiseriaSecundaria.cobrarViajeA(cliente,kms) + 30 < remiseriaPrincipal.cobrarViajeA(cliente,kms) ) 
		 return remiseriaSecundaria
		else
		 return remiseriaPrincipal
	}
}
