//
//  BaseView.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit
import SnapKit

protocol BaseView {
    func addViews()
    func setupConstraints()
    func setupExtraConfigurations()
}

extension BaseView {
    func setup() {
        addViews()
        setupConstraints()
        setupExtraConfigurations()
    }
}
