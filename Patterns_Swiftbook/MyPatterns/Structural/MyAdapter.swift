//
//  MyAdapter.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 05.04.2022.
//

import Foundation

protocol MySuperCar {
    func drive()
}

class MySimpleCar {
    
    func text() {
        print("hello")
    }
}

class MySuperCarAdapter: MySuperCar {
    
    var myCar: MySimpleCar
    
    init(myCar: MySimpleCar) {
        self.myCar = myCar
    }
    
    func drive() {
        myCar.text()
    }
}
