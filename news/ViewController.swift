//
//  ViewController.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        
        let custom = PostsView(frame: UIScreen.main.bounds)
        view = custom
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "News"
    }
}

