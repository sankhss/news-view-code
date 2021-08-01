//
//  PostsView.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit

class ArticleListView: UIView, BaseView {
    
    var tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table;
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews() {
        addSubview(tableView)
    }
    
    func setupConstraints() {
        tableView.snp.makeConstraints { maker in
            maker.top.equalToSuperview()
            maker.left.equalToSuperview()
            maker.bottom.equalToSuperview()
            maker.right.equalToSuperview()
        }
    }
    
    func setupExtraConfigurations() {
        tableView.backgroundColor = .white
        tableView.register(ArticleViewCell.self, forCellReuseIdentifier: "articleViewCell")
    }
}
