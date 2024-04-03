import chanchitos.*

object feroz{
	var peso = 10
	
	method peso() = peso
	
	method estaSaludable(){
		return peso>20 && peso<150
	}
	
	method aumentaPeso(unidades){
		peso = peso + unidades
	}
	
	method disminuyePeso(unidades){
		peso = peso - unidades
	}
	
	method sufreCrisis(){
		peso = 10
	}
	
	method tieneMiedoDe(comida){
		return comida.estaArmado()
	}
	
	method come(comida){
		if(not self.tieneMiedoDe(comida) && comida.peso() < 100){
			peso = peso + (comida.peso()/10)
		}
		else{
			self.sufreCrisis()
		}
	}
	
	method corre(){
		peso = peso - 1
	}
	
	method sopla(casa){
		if(peso > (casa.resistencia() + casa.cantChanchitos()*chanchitos.peso())){
			peso = peso - (casa.resistencia() + casa.cantChanchitos()*chanchitos.peso())
		}
		else{
			self.sufreCrisis()
		}
	}
}

object caperucita{
	var cantManzanas = 6
	
	method estaArmado() = false
	method peso() = 60 + cantManzanas * 0.2
	method cantManzanas() = cantManzanas
	method sacarManzanasCanasta(cantidad){
		if((cantManzanas - cantidad) > 0){
			cantManzanas = cantManzanas - cantidad
		}
		else{
			cantManzanas = 0
		}
	}
}

object abuelita{
	method peso() = 50
	method estaArmado() = false
}

object cazador{
	method peso() = 80
	method estaArmado() = true
}

/*
  * EN ESTE EJEMPLO EL LOBO NO SE PUEDE COMER AL CAZADOR Y ENTRA EN CRISIS, YA QUE EL CAZADOR ESTA
  ARMADO
  * TAMBIEN PUEDE SUCEDER QUE ESTE DESARMADO POR LO TANTO SE LO COMA
  * OTRO CASO SERIA QUE EL CAZADOR QUE VENGA PENSE MAS DE 100kg POR LO QUE EL LOBO TAMBIEN 
  ENTRARIA EN CRISIS
*/