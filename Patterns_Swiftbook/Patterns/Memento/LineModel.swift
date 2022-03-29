//
//  LineModel.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 29.03.2022.
//

import UIKit

struct LineModel {
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    
    init(start: CGPoint, end: CGPoint, color: UIColor) {
        self.start = start
        self.end = end
        self.color = color
    }
}
