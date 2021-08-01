//
//  ArticleDetailsView.swift
//  news
//
//  Created by Samuel Silva on 01/08/21.
//

import UIKit
import WebKit

class ArticleDetailsView: UIView, BaseView {
    
    private lazy var webView: WKWebView = {
        let webConfiguration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: webConfiguration)
        return webView
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with viewModel: ArticleDetailsViewModel) {
        if let url = viewModel.url, let webUrl = URL(string: url) {
            let request = URLRequest(url: webUrl)
            webView.load(request)
        }
    }
    
    func addViews() {
        addSubview(webView)
    }
    
    func setupConstraints() {
        webView.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(0)
            make.left.equalToSuperview().offset(0)
            make.right.equalToSuperview().offset(0)
            make.bottom.equalToSuperview().offset(0)
        }
    }
    
    func setupExtraConfigurations() {
        backgroundColor = .white
    }
}
