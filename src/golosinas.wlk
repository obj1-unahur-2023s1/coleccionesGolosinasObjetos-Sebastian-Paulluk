
object bombon {
	var peso = 15
	
	method peso() = peso
	method sabor() = "frutilla"
	method esLibreDeGluten() = true
	method precio() = 5
	method recibirMordisco() = (peso -= (peso*0.8)-1)
}

object alfajor {
	var peso = 300
	
	method peso() = peso
	method sabor() = "chocolate"
	method esLibreDeGluten() = false
	method precio() = 12
	method recibirMordisco() = (peso -= (peso*0.8))
}

object caramelo {
	var peso = 5
	
	method sabor() = "futilla"
	method esLibreDeGluten() = true
	method precio() = 1
	method recibirMordisco() = 0.max(peso-1)
}

object chupetin {
	var peso = 7
	
	method peso() = peso
	method sabor() = "naranja"
	method esLibreDeGluten() = true
	method precio() = 2
	method recibirMordisco() = 2.max(peso - (peso*0.1))
}

object oblea {
	var peso = 250
	
	method sabor() = "vainilla"
	method peso() = peso
	method esLibreDeGluten() = true
	method precio() = 5
	method recibirMordisco() {
		if (peso > 70) { peso = peso*0.5}
		else { peso= peso*0.75 }
	}
}

object chocolatin {
	var pesoInicial
	var pesoActual
	
	method peso() = pesoActual
	method setPesoInicial(unPeso) {
		pesoInicial = unPeso
		pesoActual = pesoInicial
	}
	method sabor() = "chocolate"
	method esLibreDeGluten() = false
	method precio() = pesoInicial*0.5
	method recibirMordisco() {
		pesoActual = 0.max(pesoActual-2)
	}
}

object golosinaBaniada {
	var property golosinaBase
	var pesoBanio = 4
	
	method peso() = golosinaBase.peso() + pesoBanio
	method precio() = golosinaBase.precio() + 2
	method sabor() = golosinaBase.sabor()
	method esLibreDeGluten() = golosinaBase.esLibreDeGluten()
	method recibirMordisco() {
		golosinaBase.recibirMordisco()
		pesoBanio = 0.max(pesoBanio - 2)
	}
}

object tuttiFrutti {
	var property peso = 5
	var property esLibreDeGluten = true
	const sabores =[ "frutilla", "chocolate", "naranja" ]
	var cantMordiscos = 0
	
	method peso() = peso
	method precio() = if (esLibreDeGluten) 7 else 10
	method recibirMordisco() {
		cantMordiscos ++
	}
	method sabor() = sabores.get(cantMordiscos % sabores.size())
}