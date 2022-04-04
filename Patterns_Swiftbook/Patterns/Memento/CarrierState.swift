//
//  File.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 29.03.2022.
//

import Foundation

class CarrierState {
    var state: StateLinesMemento?
    var linesManager: LinesManager
    
    init(linesManager: LinesManager) {
        self.linesManager = linesManager
    }
    
    public func saveLine() {
        state = linesManager.save()
    }
    
    func loadLine() {
        guard state != nil else { return }
        linesManager.load(state: state!)
    }
}
