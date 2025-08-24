object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
		console.println(energia)
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepón {
	var energia = 30
	
	method comer(comida) {
		energia = energia + (comida.energiaQueAporta() / 2)
		console.println(energia)
	}
	
	method volar(distancia) {
		energia = energia - 20 - (distancia * 2)
	}
	
	method energia() {
		return energia
	}
}

object roque {
	var ave = pepita
	var cantidadDeCenas = 0

	method alimentar(alimento) {
		ave.comer(alimento)
		cantidadDeCenas = cantidadDeCenas + 1
	}

	method cenas() {
		return cantidadDeCenas
	}
}