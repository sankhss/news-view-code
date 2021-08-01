//
//  UIImage+Extensions.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit

extension UIImage {
    static func imageForPlaceholder() -> UIImage {
        return UIImage(named: "placeholder")!
    }
    static func imageForHeadline(urlString: String, completion: @escaping (UIImage) -> ()) {
        if let imageUrl = URL(string: urlString) {
            DispatchQueue.global().async {
                if let data = try? Data(contentsOf: imageUrl) {
                    if let image = UIImage(data: data) {
                        completion(image)
                        return
                    }
                }
            }
            return
        }
        
        completion(UIImage.imageForPlaceholder())
    }
}
