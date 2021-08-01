//
//  PostCell.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit
import SnapKit

class ArticleViewCell: UITableViewCell, BaseView {
    
    fileprivate var stackView: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fill
        stack.alignment = .center
        stack.axis = .horizontal
        stack.spacing = 8
        return stack
    }()
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    var headlineImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with viewModel: ArticleViewModel) {
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
        viewModel.image { self.headlineImageView.image = $0 }
    }
    
    func addViews() {
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(headlineImageView)
        contentView.addSubview(stackView)
        contentView.addSubview(descriptionLabel)
    }
    
    func setupConstraints() {
        stackView.snp.makeConstraints { maker in
            maker.left.equalToSuperview().offset(24)
            maker.top.equalToSuperview().offset(8)
            maker.right.equalToSuperview().inset(10)
            //maker.bottom.equalTo(descriptionLabel.snp.top).inset(8)
        }
        
        titleLabel.snp.makeConstraints { maker in
            maker.left.equalToSuperview()
        }
        
        headlineImageView.snp.makeConstraints { maker in
//            maker.right.equalToSuperview().inset(8)
//            maker.top.equalToSuperview().offset(8)
//            maker.left.greaterThanOrEqualTo(stackView.snp.right).offset(10)
            maker.height.equalTo(70)
            maker.width.equalTo(70)
        }
        
        descriptionLabel.snp.makeConstraints { maker in
            maker.left.equalToSuperview().offset(24)
            maker.right.equalToSuperview().inset(10)
            maker.top.equalTo(stackView.snp.bottom).offset(8)
            maker.bottom.equalToSuperview().inset(8)
        }
    }
    
    func setupExtraConfigurations() {
        backgroundColor = .white
        contentView.layoutIfNeeded()
    }
}
