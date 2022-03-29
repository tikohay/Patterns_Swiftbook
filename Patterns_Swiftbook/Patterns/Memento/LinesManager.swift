//
//  LinesManager.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 29.03.2022.
//

import Foundation
import UIKit

class LinesManager {
    static let shared = LinesManager()
    
    var linesArray: [LineModel] = []
    
    func save() -> StateLinesMemento {
        return StateLinesMemento(lines: self.linesArray)
    }
    
    func load(state: StateLinesMemento) {
        self.linesArray = state.linesArray
    }
    
    func printLines(in view: UIView) {
        for view in view.layer.sublayers! {
            view.removeFromSuperlayer()
        }
        
        for line in linesArray {
            let path = UIBezierPath()
            path.move(to: line.start)
            path.addLine(to: line.end)
            drawShapeLayer(path, line.color, view)
        }
    }
    
    private func drawShapeLayer(_ path: UIBezierPath, _ lineColor: UIColor, _ view: UIView) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(shapeLayer)
        view.setNeedsDisplay()
    }
}
