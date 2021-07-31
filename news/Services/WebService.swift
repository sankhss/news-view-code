//
//  WebService.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}

struct WebService {
    
    func load<T>(_ resource: Resource<T>, completion: @escaping (T?) -> ()) {
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            } else {
                completion(nil)
            }
        }.resume()
    }
}
