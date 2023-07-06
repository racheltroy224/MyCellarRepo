//
//  Bottles.swift
//  MyCellar
//
//  Created by Rachel Troy on 7/5/23.
//

import Foundation

class Bottles {
    
    enum Country: Int {
        case USA, France, Italy, Spain, Greece, Other
    }
    static func label() -> String {
        return "Name: <name>\nSubname: <subname>\nCountry: <country>\nRegion: <region>\nYear: <year>\nPrice: $<price>\nRating: <rating>\nPurchase Date: <purchaseDate>\nLocation: <location>"
    }
}
