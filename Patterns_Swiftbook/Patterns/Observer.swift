//
//  Observer.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 20.03.2022.
//

import Foundation

protocol Subject {
    
    func add(observer: PropertyObserver)
    func remove(observer: PropertyObserver)
    func notify(with string: String)
}

protocol PropertyObserver: Subject {
    func didGet(newTask task: String)
}

class Teacher: Subject {
    
    var observerCollecton = NSMutableSet()
    var homeTask = "" {
        didSet {
            notify(with: homeTask)
        }
    }
    
    func add(observer: PropertyObserver) {
        observerCollecton.add(observer)
    }
    
    func remove(observer: PropertyObserver) {
        observerCollecton.remove(observer)
    }
    
    func notify(with string: String) {
        for observer in observerCollecton {
            (observer as! PropertyObserver).didGet(newTask: string)
        }
    }
}

class Pupil: NSObject, PropertyObserver {
    
    var homeTask = ""
    
    func didGet(newTask task: String) {
        homeTask = task
        
    }
    
    func add(observer: PropertyObserver) {
        <#code#>
    }
    
    func remove(observer: PropertyObserver) {
        <#code#>
    }
    
    func notify(with string: String) {
        <#code#>
    }
}
