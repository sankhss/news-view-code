//
//  URL+Extensions.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import Foundation

extension URL {
    static func urlForTopHeadlinesForCategory(_ category: String) -> URL {
        let urlString = "\(K.API.url)&\(K.API.URLParams.category)=\(category)"
        return URL(string: urlString)!
    }
}
