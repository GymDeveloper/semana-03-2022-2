//
//  Auto.swift
//  Semana03-2022-2
//
//  Created by Linder Anderson Hassinger Solano    on 9/09/22.
//

import Foundation

class Auto {
    
    /// si no tenemos un constructor podemos inicializar las variables
    var brand: String = "Toyoya"
    var model: String = "Pickup"
    var color: String = "negro"
    var speed: Float  = 60.5
    
    func move(moreSpped: Float) {
        speed += moreSpped
        if speed > 160 {
            self.stop()
        }
    }
    
    func slowDown(lessSpped: Float) {
        speed -= lessSpped
        
        if speed < 0 {
            move(moreSpped: lessSpped)
        }
    }
    
    func stop() {
        print("Autho stopped")
        speed = 0.0
    }
}
