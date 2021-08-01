//
//  ViewController.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit

class ArticleListViewController: UIViewController {
    
    private var viewModel = ArticleListViewModel()
    private let customView = ArticleListView(frame: UIScreen.main.bounds)
    
    override func loadView() {
        super.loadView()
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupObservables()
        
        viewModel.load()
        customView.tableView.dataSource = self
        customView.tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBar(title: "News", preferredLargeTitle: true)
    }
    
    private func setupObservables() {
        viewModel.setData = {
            self.customView.tableView.reloadData()
        }
    }
    
    private func pushToDetails(viewModel: ArticleDetailsViewModel) {
        let detailsViewController = ArticleDetailsViewController()
        detailsViewController.viewModel = viewModel
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}

extension ArticleListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfArticles()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "articleViewCell", for: indexPath) as! ArticleViewCell
        let articleViewModel = viewModel.articleAt(index: indexPath.row)
        cell.configure(with: articleViewModel)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsViewModel = viewModel.selectedArticleAt(index: indexPath.row)
        pushToDetails(viewModel: detailsViewModel)
    }
}

