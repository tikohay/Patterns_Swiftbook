//
//  Strategy.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 20.03.2022.
//

import Foundation

protocol SwimBehavior {
    
    func swim()
}

protocol DiveBehavior {
    
    func dive()
}

class ProfessionalSwimmer: SwimBehavior {
    
    func swim() {
        print("professional swimming")
    }
}

class NonSwimmer: SwimBehavior {
    
    func swim() {
        print("non-swimming")
    }
}

class ProfessionalDiver: DiveBehavior {
    
    func dive() {
        print("professional diving")
    }
}

class NewDiver: DiveBehavior {
    
    func dive() {
        print("new diving")
    }
}

class NonDiving: DiveBehavior {
    func dive() {
        print("non diving")
    }
}

class Human {
    
    var diveBehavior: DiveBehavior!
    var swimBehavior: SwimBehavior!
    
    func performSwim() {
        swimBehavior.swim()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    func setSwimBehavior(sb: SwimBehavior) {
        self.swimBehavior = sb
    }
    
    func setDiveBehavior(db: DiveBehavior) {
        self.diveBehavior = db
    }
    
    func run() {
        print("running")
    }
}

func test() {
    let human = Human()
    human.setDiveBehavior(db: ProfessionalDiver())
    human.performDive()
}
