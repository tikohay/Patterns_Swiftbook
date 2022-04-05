//
//  ChainOfResponsibility.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 24.03.2022.
//

import Foundation

protocol MilitaryChain {
    var strength: Int { get }
    var nextRank: MilitaryChain? { get set }
    func shouldDefeatWithStrength(amount: Int)
}

class Enemy {
    let strngth = 600
}

class Soldier: MilitaryChain {
    var strength: Int = 100
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("soldier got it")
        } else {
            nextRank?.shouldDefeatWithStrength(amount: amount)
        }
    }
}

class Officer: MilitaryChain {
    var strength: Int = 500
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("Officer got it")
        } else {
            nextRank?.shouldDefeatWithStrength(amount: amount)
        }
    }
}

class General: MilitaryChain {
    var strength: Int = 1000
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("General got it")
        } else {
            print("we can't defeat this enemy")
        }
    }
}
