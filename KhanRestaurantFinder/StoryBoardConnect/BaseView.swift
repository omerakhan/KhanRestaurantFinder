//
//  BaseView.swift
//  KhanRestaurantFinder
//
//  Created by Omer Khan on 3/5/19.
//  Copyright © 2019 Omer Khan. All rights reserved.
//

import UIKit

@IBDesignable class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }

    func configure() {

    }
}
