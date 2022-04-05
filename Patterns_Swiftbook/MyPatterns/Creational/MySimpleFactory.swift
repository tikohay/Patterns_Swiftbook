//
//  MySimpleFactory.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 04.04.2022.
//

import Foundation

enum MyCarType {
    case huge, sport
}

protocol MyCar {
    func drive()
}

class MySportCar: MyCar {

    func drive() {
        print("drive car")
    }
}

class MyHugeCar: MyCar {
    func drive() {
        print("huge car")
    }
}

class MyCarFactory {

    static func produce(carType: MyCarType) -> MyCar {
        switch carType {
        case .huge:
            return MyHugeCar()
        case .sport:
            return MySportCar()
        }
    }
}
