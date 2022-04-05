//
//  MyStrategy.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 04.04.2022.
//

import Foundation
import UIKit

protocol FilterStrategy {
    func apply()
}

class Filter {
    var filterStrategy: FilterStrategy?

    func apply() {
        filterStrategy?.apply()
    }
}


class TopQualityFilter: FilterStrategy {

    func apply() {
        print("TopQualityFilter")
    }
}

class MediumQualityFilter: FilterStrategy {
    func apply() {
        print("MediumQualityFilter")
    }
}


