//
//  Article.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import Foundation

struct Result: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let description: String?
    let url: String?
    let urlToImage: String?
}
