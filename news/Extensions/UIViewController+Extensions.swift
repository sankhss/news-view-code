//
//  UIViewController+Extensions.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit

extension UIViewController {
    func configureNavigationBar(title: String, preferredLargeTitle: Bool) {
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.largeTitleTextAttributes = [.foregroundColor: ThemeManager.contrastColor()]
            navBarAppearance.titleTextAttributes = [.foregroundColor: ThemeManager.contrastColor()]
            navBarAppearance.backgroundColor = ThemeManager.backgroundColor()
            navBarAppearance.shadowColor = nil
            
            navigationController?.navigationBar.standardAppearance = navBarAppearance
            navigationController?.navigationBar.compactAppearance = navBarAppearance
            navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
            
            navigationController?.navigationBar.prefersLargeTitles = preferredLargeTitle
            navigationController?.navigationBar.isTranslucent = false
            navigationController?.navigationBar.tintColor = ThemeManager.contrastColor()
            navigationController?.navigationBar.shadowImage = nil
            navigationItem.title = title
            
        } else {
            navigationController?.navigationBar.barTintColor = ThemeManager.backgroundColor()
            navigationController?.navigationBar.tintColor = ThemeManager.contrastColor()
            navigationController?.navigationBar.isTranslucent = false
            navigationItem.title = title
        }
    }
}
