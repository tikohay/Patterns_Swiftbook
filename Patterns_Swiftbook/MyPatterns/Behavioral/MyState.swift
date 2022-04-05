//
//  MyState.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 05.04.2022.
//

import Foundation

protocol MyState {
    func turnOn(printer: MyPrinter)
    func turnOff(printer: MyPrinter)
    func printDocument(printer: MyPrinter)
}

class MyOn: MyState {
    
    func turnOn(printer: MyPrinter) {
        print("already on")
    }
    
    func turnOff(printer: MyPrinter) {
        print("tearn off")
        printer.setState(state: MyOff())
    }
    
    func printDocument(printer: MyPrinter) {
        print("print document")
        printer.setState(state: MyPrint())
    }
}

class MyOff: MyState {
    
    func turnOn(printer: MyPrinter) {
        print("already on")
        printer.setState(state: MyOn())
    }
    
    func turnOff(printer: MyPrinter) {
        print("tearn off")
    }
    
    func printDocument(printer: MyPrinter) {
        print("print document")
    }
}

class MyPrint: MyState {
    
    func turnOn(printer: MyPrinter) {
        print("already on")
        printer.setState(state: MyOn())
    }
    
    func turnOff(printer: MyPrinter) {
        print("tearn off")
        printer.setState(state: MyOff())
    }
    
    func printDocument(printer: MyPrinter) {
        print("print document")
    }
}

class MyPrinter {
    
    var state: MyState
    
    init() {
        self.state = MyOn()
    }
    
    func setState(state: MyState) {
        self.state = state
    }
    
    func turnOn() {
        state.turnOn(printer: self)
    }
    
    func turnOff() {
        state.turnOff(printer: self)
    }
    
    func printDocument() {
        state.printDocument(printer: self)
    }
}
