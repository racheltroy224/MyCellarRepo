//
//  Fridge.swift
//  MyCellar
//
//  Created by Rachel Troy on 7/14/23.
//

import Foundation
import UIKit

class Fridge {
    var rows = 0
    var columns = 0
    var capacity = 0
    //var unitType = CellarType.UnitType.cellar
    var text = ""
    
    init() {
        text = "Number of rows: <numRows>\nNuumber of columns: <numCols>\nTotal capacity: <capacity>"
    }
    
    func isValid() -> Bool {
        if !(rows <= 0 && columns <= 0 && capacity <= 0) {
            return true
        } else {
            return false
        }
    }
}

extension Fridge: CustomStringConvertible {
    var description: String {
        return text.replacingOccurrences(of: "<numRows>", with: String(rows))
            .replacingOccurrences(of: "<numCols>", with: String(columns))
            .replacingOccurrences(of: "<capacity>", with: String(capacity))
    }
}
