//
//  Category.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import Foundation

enum Category {
    case business, entertainment, sports
    
    var name: String {
        get {
            switch self {
            case .business:
                return "business"
            case .entertainment:
                return "entertainment"
            case .sports:
                return "sports"
            }
        }
    }
}
