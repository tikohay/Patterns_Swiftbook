//
//  MyObserver.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 04.04.2022.
//

import Foundation

protocol Subject2 {
    func addObserver(observer: PropertyObserver2)
    func remove(observer: PropertyObserver2)
    func notify(with text: String)
}

protocol PropertyObserver2 {
    func didGet(task: String)
}

class Teacher2: Subject2 {

    var observers = NSMutableSet()

    func addObserver(observer: PropertyObserver2) {
        observers.add(observer)
    }

    func remove(observer: PropertyObserver2) {
        observers.remove(observer)
    }

    func notify(with text: String) {
        for observer in observers {
            (observer as? PropertyObserver2)?.didGet(task: text)
        }
    }
}

class Pupil2: PropertyObserver2 {
    func didGet(task: String) {
        print(task)
    }
}


