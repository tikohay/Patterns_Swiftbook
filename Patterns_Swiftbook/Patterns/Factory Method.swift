//
//  Factory Method.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 21.03.2022.
//

import Foundation

protocol Vehicle {
    
    func drive()
}

protocol VehicleFactory {
    
    func produce() -> Vehicle
}

class Car2: Vehicle {
    
    func drive() {
        print("drive a car")
    }
}

class Truck: Vehicle {
    
    func drive() {
        print("drive a truck")
    }
}

class Bus: Vehicle {
    
    func drive() {
        print("drive a bus")
    }
}

class CarFactory2: VehicleFactory {
    func produce() -> Vehicle {
        print("truck is created")
        return Truck()
    }
}

class TruckFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("truck is created")
        return Truck()
    }
}

class BusFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("bus is created")
        return Bus()
    }
}
