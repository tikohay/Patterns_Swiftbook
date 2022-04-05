//
//  MyFactoryMethod.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 05.04.2022.
//

import Foundation

protocol MyVehicle {
    func drive()
}

protocol MyVehicleFactory {
    func produce() -> MyVehicle
}

class MyBus: MyVehicle {
    
    func drive() {
        print("bus")
    }
}

class MyTruck: MyVehicle {
    
    func drive() {
        print("truck")
    }
}

class MyBusFactory: MyVehicleFactory {
    
    func produce() -> MyVehicle {
        return MyBus()
    }
}

class MyTruckFactory: MyVehicleFactory {
    
    func produce() -> MyVehicle {
        return MyBus()
    }
}
