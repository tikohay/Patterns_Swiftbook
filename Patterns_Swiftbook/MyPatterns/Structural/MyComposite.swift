//
//  MyComposite.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 05.04.2022.
//

import Foundation
import UIKit

protocol MyCoworker {
    var lvl: Int { get }
    func hire(coworker: MyCoworker)
    func getInfo()
}

class MyManager: MyCoworker {
    
    var lvl: Int
    var coworkers: [MyCoworker] = []
    
    init(lvl: Int) {
        self.lvl = lvl
    }
    
    func hire(coworker: MyCoworker) {
        coworkers.append(coworker)
    }
    
    func getInfo() {
        for coworker in coworkers {
            print(coworker.lvl)
            coworker.getInfo()
        }
    }
}

class MyLowManager: MyCoworker {
    
    var lvl: Int
    
    init(lvl: Int) {
        self.lvl = lvl
    }
    
    func hire(coworker: MyCoworker) {
        print("can't hire")
    }
    
    func getInfo() {
        print(lvl)
    }
}
