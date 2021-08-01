//
//  ArticleService.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import Foundation

class ArticleService {
    func getAllHeadlinesFor(category: Category, completion: @escaping ([Article]) -> ()) {
        WebService().load(articlesFor(categoryName: category.name)) { articles in
            guard let articles = articles else { return }
            
            DispatchQueue.main.async {
                completion(articles)
            }
        }
    }
}

extension ArticleService {
    private func articlesFor(categoryName: String) -> Resource<[Article]> {
        return Resource<[Article]>(url: URL.urlForTopHeadlinesForCategory(categoryName)) { data in
            return try! JSONDecoder().decode(Result.self, from: data).articles
        }
    }
}
