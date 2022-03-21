//
//  AbstractFactory.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 21.03.2022.
//

import Foundation

protocol Car3 {
    
    func drive()
}

protocol Bus3 {
    
    func drive()
}

protocol Factory {
    
    func produceBus() -> Bus3
    func produceCar() -> Car3
}

class LittleSizeCar: Car3 {
    
    func drive() {
        print("drive a little car")
    }
}

class MiddleSizeCar: Car3 {
    
    func drive() {
        print("drive a middle car")
    }
}

class LittleSizeBus: Bus3 {
    
    func drive() {
        
    }
}

class MiddleSizeBus: Bus3 {
    
    func drive() {
        print("drive a middle size bus")
    }
}

class LittleSizeFactory: Factory {
    
    func produceBus() -> Bus3 {
        print("little bus is created")
        return LittleSizeBus()
    }
    
    func produceCar() -> Car3 {
        print("little size car is created")
        return LittleSizeCar()
    }
}

class MiddleSizeFactory: Factory {
    
    func produceBus() -> Bus3 {
        print("middle bus is created")
        return MiddleSizeBus()
    }
    
    func produceCar() -> Car3 {
        print("middle size car is created")
        return MiddleSizeCar()
    }
}
