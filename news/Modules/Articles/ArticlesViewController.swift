//
//  ViewController.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit

class ArticlesViewController: UIViewController {
    
    let articleListView = ArticleListView(frame: UIScreen.main.bounds)
    
    override func loadView() {
        super.loadView()
        
        view = articleListView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        articleListView.tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        configureNavigationBar(title: "News", preferredLargeTitle: true)
    }
}

extension ArticlesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "articleViewCell", for: indexPath) as! ArticleViewCell
        cell.titleLabel.text = " Title"
        cell.descriptionLabel.text = "Description"
        
        return cell
    }
}

