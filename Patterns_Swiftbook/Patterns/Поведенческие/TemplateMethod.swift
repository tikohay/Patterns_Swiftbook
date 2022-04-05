//
//  TemplateMethod.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 21.03.2022.
//

import Foundation

protocol DriveVehicle {
    func haveASeat()
    func closeTheDoor()
    func useProtection()
    func lookAtTheMirror()
    func turnSignal()
    func driveForward()
    func startVehicle()
}

extension DriveVehicle {
    
    func startVehicle() {
        haveASeat()
        useProtection()
        lookAtTheMirror()
        turnSignal()
        driveForward()
    }
    
    func haveASeat() {
        preconditionFailure("this method should be overrided")
    }
    
//    func closeTheDoor() {
//        print("if we have a door so close it")
//    }
    
    func useProtection() {
        preconditionFailure("this method should be overrided")
    }
    
    func lookAtTheMirror() {
        preconditionFailure("this method should be overrided")
    }
    
    func turnSignal() {
        preconditionFailure("this method should be overrided")
    }
    
    func driveForward() {
        preconditionFailure("this method should be overrided")
    }
}

class Bicycle: DriveVehicle {
    
    func haveASeat() {
        print("sit down on a bicycle seat")
    }
    
    func closeTheDoor() { }
    
    func useProtection() {
        print("wear a helmet")
    }
    
    func lookAtTheMirror() {
        print("look at the little mirror")
    }
    
    func turnSignal() {
        print("show left hand")
    }
    
    func driveForward() {
        print("pedal")
    }
}

class Car4: DriveVehicle {
    
    func haveASeat() {
        print("sit down on a car seat")
        closeTheDoor()
    }
    
    func closeTheDoor() {
        print("close the door")
    }
    
    func useProtection() {
        print("wear a helmet")
    }
    
    func lookAtTheMirror() {
        print("look at the rearview mirror")
    }
    
    func turnSignal() {
        print("turn on left turn light")
    }
    
    func driveForward() {
        print("push pedal")
    }
}
