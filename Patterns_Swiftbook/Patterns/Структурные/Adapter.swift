//
//  Adapter.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 21.03.2022.
//

import Foundation

//Target
protocol SupercarProtocol {
    
    func makeNoise() -> String
}

class SimpleCar {
    
    func sound() -> String {
        return "sound"
    }
}

class Supercar: SupercarProtocol {
    
    func makeNoise() -> String {
        return "SOUND"
    }
}

//Adapter
class SupercarAdatper: SupercarProtocol {
    
    var simpleCar: SimpleCar
    
    init(simpleCar: SimpleCar) {
        self.simpleCar = simpleCar
    }
    
    func makeNoise() -> String {
        return simpleCar.sound()
    }
}

