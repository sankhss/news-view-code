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
        tableView.snp.makeConstraints { maker in
            maker.top.equalToSuperview()
            maker.left.equalToSuperview()
            maker.bottom.equalToSuperview()
            maker.right.equalToSuperview()
        }
    }
    
    override func setupExtraConfigurations() {
        tableView.backgroundColor = .white
    }
}
