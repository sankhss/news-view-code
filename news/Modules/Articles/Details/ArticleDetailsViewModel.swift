//
//  ArticleDetailsViewModel.swift
//  news
//
//  Created by Samuel Silva on 01/08/21.
//

import Foundation

struct ArticleDetailsViewModel {
    private(set) var article: Article
}

extension ArticleDetailsViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleDetailsViewModel {
    var title: String {
        article.source.name
    }
    
    var url: String? {
        article.url
    }
}
