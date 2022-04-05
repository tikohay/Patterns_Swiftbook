//
//  MyAbstractFactory.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 05.04.2022.
//

import Foundation

protocol MyBusCar {
    func drive()
}

protocol MyTruckCar {
    func drive()
}

protocol MyFactory {
    func produceBus() -> MyBusCar
    func produceTruck() -> MyTruckCar
}

class MyLittleBus: MyBusCar {
    
    func drive() {
        print("little bus")
    }
}

class MyBigBus: MyBusCar {
    
    func drive() {
        print("big bus")
    }
}

class MyLittleTruck: MyTruckCar {
    
    func drive() {
        print("little truck")
    }
}

class MyBigTruck: MyTruckCar {
    
    func drive() {
        print("big truck")
    }
}

class MyLittleSizeFactory: MyFactory {
    
    func produceBus() -> MyBusCar {
        return MyLittleBus()
    }
    
    func produceTruck() -> MyTruckCar {
        return MyLittleTruck()
    }
}

class MyBigSizeFactory: MyFactory {
    
    func produceBus() -> MyBusCar {
        return MyBigBus()
    }
    
    func produceTruck() -> MyTruckCar {
        return MyBigTruck()
    }
}
