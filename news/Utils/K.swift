//
//  K.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import Foundation

enum K {
    enum API {
        static let key = "141384f115144781bfcc6aea512d87f7"
        static let url = "https://newsapi.org/v2/top-headlines?\(URLParams.apiKey)=\(key)"
        
        enum URLParams {
            static let country = "country"
            static let category = "category"
            static let apiKey = "apiKey"
        }
    }
}
