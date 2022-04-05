//
//  Decorator.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 20.03.2022.
//

import Foundation
import UIKit

protocol Porsche {
    
    func getPrice() -> Double
    func getDescription() -> String
}

class Boxter: Porsche {
    
    func getPrice() -> Double {
        return 120
    }
    
    func getDescription() -> String {
        return "Porche Boxster"
    }
}


class PorscheDecorator: Porsche {
    
    private let decoratedPorsche: Porsche
    
    required init(dp: Porsche) {
        self.decoratedPorsche = dp
    }
    
    func getPrice() -> Double {
        decoratedPorsche.getPrice()
    }
    
    func getDescription() -> String {
        decoratedPorsche.getDescription()
    }
}

class PremiumAudioSystem: PorscheDecorator {
    
    required init(dp: Porsche) {
        super.init(dp: dp)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 30
    }
    
    override func getDescription() -> String {
        return super.getDescription() + "with premium audio system"
    }
}

class PanoramicSunroof: PorscheDecorator {
    
    required init(dp: Porsche) {
        super.init(dp: dp)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 20
    }
    
    override func getDescription() -> String {
        return super.getDescription() + "with panoramic sunroof"
    }
}
