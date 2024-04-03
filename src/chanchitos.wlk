import caperucita.feroz

object casaPaja{
	var cantChanchitos
	
	method cantChanchitos() = cantChanchitos
	method cantChanchitos(cantidad){
		cantChanchitos = cantidad
	}
	method resistencia() = 0
}
object casaMadera{
	var cantChanchitos
	
	method cantChanchitos() = cantChanchitos
	method cantChanchitos(cantidad){
		cantChanchitos = cantidad
	}
	method resistencia() = 5
}
object casaLadrillo{
	var cantChanchitos
	var cantLadrillos = 50
	
	method cantChanchitos() = cantChanchitos
	method cantChanchitos(cantidad){
		cantChanchitos = cantidad
	}
	method resistencia() = cantLadrillos * 2
	method cantLadrillos() = cantLadrillos
	method cantLadrillos(cantidad){
		cantLadrillos = cantidad
	}
}

object chanchitos{
	method peso() = 120
}