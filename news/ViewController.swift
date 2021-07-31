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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        configureNavigationBar(title: "News", preferredLargeTitle: true)
    }
}

