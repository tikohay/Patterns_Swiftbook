//
//  Composite.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 23.03.2022.
//

import Foundation

protocol Coworker {
    func hire(coworker: Coworker)
    func getInfo()
    var lvl: Int { get }
}

//Branch
class Manager: Coworker {
    private var coworkers: [Coworker] = []
    var lvl: Int
    
    init(lvl: Int) {
        self.lvl = lvl
    }
    
    func hire(coworker: Coworker) {
        self.coworkers.append(coworker)
    }
    
    func getInfo() {
        print(self.lvl.description + " level manager")
        for coworker in coworkers {
            print(coworker.lvl)
            coworker.getInfo()
        }
    }
}

//Leaf
class LowLevelManager: Coworker {
    var lvl: Int
    
    init(lvl: Int) {
        self.lvl = lvl
    }
    
    func hire(coworker: Coworker) {
        print("can't hire")
    }
    
    func getInfo() {
        print(self.lvl.description + " level manager")
    }
}
