//VELOCIMETRO DE UN AUTOMOVIL.  RETO 02

import UIKit

enum Velocidades : Int{
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad = Velocidades(rawValue: 0)
    init(){
        self.velocidad = .apagado
    }
    func cambioDeVelocidad()-> ( actual : Int, velocidadEnCadena: String){
        var mensaje = ""
        var resultado = (velocidad!.rawValue,mensaje)
        if velocidad!.rawValue == 0{
            mensaje = ", apagado"
            resultado = (velocidad!.rawValue,mensaje)
             velocidad = .velocidadBaja
            return resultado
        }
        if velocidad!.rawValue == 20{
            mensaje = ", velocidadBaja"
            resultado = (velocidad!.rawValue,mensaje)
            velocidad = .velocidadMedia
            return resultado
        }
        if velocidad!.rawValue == 50{
            mensaje = ", velocidadMedia"
            resultado = (velocidad!.rawValue,mensaje)
            velocidad = .velocidadAlta
            return resultado
        }
        if velocidad!.rawValue == 120{
            mensaje = ", velocidadAlta"
            resultado = (velocidad!.rawValue,mensaje)
            velocidad = .velocidadMedia
            return resultado
        }
        return resultado
    }

}

//------PRUEBAS--------

var auto = Auto()
for i in 0...20{
    print(auto.cambioDeVelocidad())
}
