//
//  ViewController.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    let postsView = PostsView(frame: UIScreen.main.bounds)
    
    override func loadView() {
        super.loadView()
        
        view = postsView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        postsView.tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        configureNavigationBar(title: "News", preferredLargeTitle: true)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postViewCell", for: indexPath) as! PostViewCell
        cell.titleLabel.text = " Title"
        cell.descriptionLabel.text = "Description"
        
        return cell
    }
}

