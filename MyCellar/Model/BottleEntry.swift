//
//  BottleEntry.swift
//  MyCellar
//
//  Created by Rachel Troy on 7/5/23.
//

import Foundation
import UIKit

class BottleEntry {
    var name = ""
    var subname = ""
    var country = ""
    var region = ""
    var year = ""
    var price = ""
    var rating = ""
    var purchaseDate = ""
    var location = ""
    var text = ""
    
    init(){
        text = Bottles.label()
    }
    
    func isValid() -> Bool {
        return !(name.isEmpty && year.isEmpty && location.isEmpty)
    }
}

extension BottleEntry: CustomStringConvertible {
    var description: String {
        return text.replacingOccurrences(of: "<name>", with: name).replacingOccurrences(of: "<subname>", with: subname).replacingOccurrences(of: "<country>", with: country).replacingOccurrences(of: "<region>", with: region).replacingOccurrences(of: "<year>", with: year).replacingOccurrences(of: "<price>", with: price).replacingOccurrences(of: "<rating>", with: rating).replacingOccurrences(of: "<purchaseDate>", with: purchaseDate).replacingOccurrences(of: "<location>", with: location)
    }
}
