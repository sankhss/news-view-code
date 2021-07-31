//
//  PostsView.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit

class PostsView: BaseView {
    fileprivate let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table;
    }()
    
    override func addViews() {
        addSubview(tableView)
    }
    
    override func setupConstraints() {
        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    override func setupExtraConfigurations() {
        tableView.backgroundColor = .white
    }
}
