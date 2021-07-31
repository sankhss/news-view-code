//
//  BaseView.swift
//  news
//
//  Created by Samuel Silva on 31/07/21.
//

import UIKit

class BaseView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    required public init() {
        super.init(frame: CGRect.zero)
        self.setup()
    }
    
    func addViews() { fatalError("Must be overridden") }
    
    func setupConstraints() { fatalError("Must be overridden") }
    
    func setupExtraConfigurations() {}
}

extension BaseView {
    fileprivate func setup() {
        self.addViews()
        self.setupConstraints()
        self.setupExtraConfigurations()
    }
}
