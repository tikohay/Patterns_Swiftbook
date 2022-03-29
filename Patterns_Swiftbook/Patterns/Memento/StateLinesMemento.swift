//
//  StateLinesMemento.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 29.03.2022.
//

import Foundation

class StateLinesMemento {
    var linesArray: [LineModel]
    
    init(lines: [LineModel]) {
        self.linesArray = lines
    }
}
