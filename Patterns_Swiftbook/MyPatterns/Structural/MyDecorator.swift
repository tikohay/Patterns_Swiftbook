//
//  MyDecorator.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 04.04.2022.
//

import Foundation
import UIKit

protocol MyPorche {
    func getPrice() -> Int
    func getDescription() -> String
}

class MyBoxter: MyPorche {

    func getPrice() -> Int {
        return 120
    }

    func getDescription() -> String {
        return "my boxter"
    }
}

class MyBoxterDecorator: MyPorche {

    var myPorche: MyPorche

    required init(myPorche: MyPorche) {
        self.myPorche = myPorche
    }

    func getPrice() -> Int {
        myPorche.getPrice()
    }

    func getDescription() -> String {
        myPorche.getDescription()
    }
}

class MyPremiumPorche: MyBoxterDecorator {

    required init(myPorche: MyPorche) {
        super.init(myPorche: myPorche)
    }

    override func getPrice() -> Int {
        super.getPrice() + 30
    }

    override func getDescription() -> String {
        super.getDescription() + "my premium"
    }
}

class MyMiddlePorche: MyBoxterDecorator {

    required init(myPorche: MyPorche) {
        super.init(myPorche: myPorche)
    }

    override func getPrice() -> Int {
        super.getPrice() + 20
    }

    override func getDescription() -> String {
        super.getDescription()
    }
}


