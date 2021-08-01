//
//  ArticleDetailsViewController.swift
//  news
//
//  Created by Samuel Silva on 01/08/21.
//

import UIKit

class ArticleDetailsViewController: UIViewController {
    
    var viewModel: ArticleDetailsViewModel!
    private let customView = ArticleDetailsView(frame: UIScreen.main.bounds)
    
    override func loadView() {
        super.loadView()
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        customView.configure(with: viewModel)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureNavigationBar(title: viewModel.title, preferredLargeTitle: false)
    }
}
