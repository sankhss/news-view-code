//
//  ArticleViewModel.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit

struct ArticleViewModel {
    private(set) var article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        article.title
    }
    
    var description: String? {
        article.description
    }
    
    func image(completion: @escaping (UIImage?) -> ()) {
        guard let imageUrl = article.urlToImage else {
            completion(UIImage.imageForPlaceholder())
            return
        }
        
        UIImage.imageForHeadline(urlString: imageUrl) { image in
            DispatchQueue.main.async {
                completion(image)
            }
        }
    }
}
