//
//  Singleton.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 21.03.2022.
//

import Foundation

class Safe {
    
    static let shared = Safe()
    
    var money = 0
    
    private init() {}
}
