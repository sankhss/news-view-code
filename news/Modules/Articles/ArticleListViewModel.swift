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
    
    func articleAt(index: Int) -> ArticleViewModel {
        return ArticleViewModel(articles[index])
    }
    
    func selectedArticleAt(index: Int) -> ArticleDetailsViewModel {
        return ArticleDetailsViewModel(articles[index])
    }
}

extension ArticleListViewModel {
    
    func load() {
        ArticleService().getAllHeadlinesFor(category: .sports) { articles in
            self.articles = articles
            self.setData?()
        }
    }
}
