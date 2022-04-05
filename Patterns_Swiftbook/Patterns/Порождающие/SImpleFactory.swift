//
//  SImpleFactory.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 21.03.2022.
//

import Foundation

enum CarType {
    case huge, fast
}

protocol Car {
    
    func drive()
}

class HugeCar: Car {
    
    func drive() {
        print("you drive huge car")
    }
}

class FastCar: Car {
    
    func drive() {
        print("you drive fast car")
    }
}

class CarFactory {
    
    static func produceCar(type: CarType) -> Car {
        var car: Car
        
        switch type {
        case .huge:
            car = HugeCar()
        case .fast:
            car = FastCar()
        }
        return car
    }
}
