object paquete {
  var precio = 50
  method estaPago() = precio == 0 
  method pagarPrecio(dinero){
     precio = (precio - dinero).max(0)
    }

  method puedeSerEntregado(mensajero,destino) = destino.dejaPasar(mensajero) && self.estaPago() 
}

object paquetito {
  method estaPago() = true
  method puedeSerEntregado(mensajero,destino) = destino.dejaPasar(mensajero)

}

object pauqetonViajero {
  var precio = 100
  method estaPago() = precio == 0 
  method pagarPrecio(dinero){
     precio = (precio - dinero).max(0)
    }
  method puedeSerEntregado(mensajero,destino) = destino.dejaPasar(mensajero) && self.estaPago()
  
}



//Puenets
object puenteBrooklyn {
  method dejaPasar(mensajero) = mensajero.peso() < 1000  && mensajero.getPaquete()
}

object matrix {
  method dejaPasar(mensajero) = mensajero.puedeLlamar() && mensajero.getPaquete()

}






//Mensajeros

object roberto {
  var vehiculo = bicicleta
  var pesoPropio = 90
  var paquete = null

  method setVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
  }

  method setPesoPropio(nuevoPeso){
    pesoPropio = nuevoPeso
  }

  method peso() = pesoPropio + vehiculo.peso()

  method puedeLlamar() = false

  method setPaquete(unPaquete) {
    paquete = unPaquete
  }

  method setAcopladosDelCamion(cantAcoplados){
    vehiculo.setAcoplados(cantAcoplados)
  }

  method pagarPaquete(dinero) {
    paquete.pagarPrecio(dinero)
  }

  method getPaquete() = paquete.estaPago()

}


object chuck {
  var paquete = null
  method peso() = 80
  method puedeLlamar() = true
  method setPaquete(unPaquete) {
    paquete = unPaquete
  }
  method pagarPaquete(dinero) {
    paquete.pagarPrecio(dinero)
  }
  method getPaquete() = paquete.estaPago()
}

object neo {
  var paquete = null
  var tieneCredito = true
  method peso() = 0
  method puedeLlamar() = tieneCredito 
  method setCredito(credito){
     tieneCredito = credito}
  method setPaquete(unPaquete) {
    paquete = unPaquete
  }
  method pagarPaquete(dinero) {
    paquete.pagarPrecio(dinero)
  }
  method getPaquete() = paquete.estaPago()

}

//Vehiculos de Roberto

object bicicleta {
  method peso() = 5
}

object camion {
  method peso() = acoplados * 500
  var acoplados = 1
  method setAcoplados(cantAcoplados) {
    acoplados = cantAcoplados
  }
}


//Mensajeria

object empresa{
  const mensajeros = []

  method contratarMensajero(mensajero){
    mensajeros.add(mensajero)
  }

  method despedirMensajero(mensajero) {
    mensajeros.remove(mensajero)
  }

  method laMensajeriaEsGrande() = mensajeros.size() > 2 

  method pesoDelUltimoEmpleado() = mensajeros.last().peso()

  method nomina() = mensajeros
}