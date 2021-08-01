//
//  ArticleListViewModel.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import Foundation

class ArticleListViewModel {
    private var articles = [Article]()
    
    var setData: (() -> Void)?
}

extension ArticleListViewModel {
    func numberOfArticles() -> Int {
        return articles.count
    }
    
    func articleAtIndex(index: Int) -> ArticleViewModel {
        return ArticleViewModel(articles[index])
    }
}

extension ArticleListViewModel {
    
    func load() {
        ArticleService().getAllHeadlinesFor(category: .business) { articles in
            self.articles = articles
            self.setData?()
        }
    }
}
