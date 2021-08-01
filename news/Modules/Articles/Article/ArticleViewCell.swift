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
        stack.distribution = .fillProportionally
        stack.axis = .vertical
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var headlineImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews() {
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(descriptionLabel)
        contentView.addSubview(stackView)
        contentView.addSubview(headlineImageView)
    }
    
    func setupConstraints() {
        stackView.snp.makeConstraints { maker in
            maker.left.equalToSuperview().offset(24)
            maker.top.equalToSuperview().offset(8)
            maker.right.equalToSuperview().inset(8)
            maker.bottom.equalToSuperview().inset(8)
        }
        
        titleLabel.snp.makeConstraints { maker in
            maker.left.equalToSuperview()
        }
        
        descriptionLabel.snp.makeConstraints { maker in
            maker.left.equalToSuperview()
        }
        
        headlineImageView.snp.makeConstraints { maker in
            maker.right.equalToSuperview().inset(8)
            maker.top.equalToSuperview().offset(8)
            maker.height.equalTo(70)
            maker.width.equalTo(70)
        }
        
    }
    
    func setupExtraConfigurations() {
        backgroundColor = .white
    }
}
