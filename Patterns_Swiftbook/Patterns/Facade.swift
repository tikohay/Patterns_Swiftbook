//
//  Facade.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 21.03.2022.
//

import Foundation

class FruitShop {
    
    func buyFruits() -> String {
        return "fruits"
    }
}

class MeatShop {
    
    func buyFruits() -> String {
        return "meat"
    }
}

class MilkShop {
    
    func buyMik() -> String {
        return "milk"
    }
}

class SweetShop {
    
    func buySweets() -> String {
        return "sweet"
    }
}

class BreadShop {
    
    func buyBread() -> String {
        return "bread"
    }
}

//Facade
class Supermarket {
    
    let fruitShop = FruitShop()
    let meatShop = MeatShop()
    let milkShop = MilkShop()
    let sweetShop = SweetShop()
    let breadShop = BreadShop()
    
    func buyProducts() -> String {
        var products = ""
        products += fruitShop.buyFruits() + ", "
        products += meatShop.buyFruits() + ", "
        products += milkShop.buyMik() + ", "
        products += sweetShop.buySweets() + ", "
        products += breadShop.buyBread() + ", "
        return "i bought: " + products
    }
}
