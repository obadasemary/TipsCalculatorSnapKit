//
//  AmountView.swift
//  TipsCalculatorSnapKit
//
//  Created by Abdelrahman Mohamed on 8.01.2023.
//

import UIKit

class AmountView: UIView {

    init() {
        super.init(frame: .zero)
        layout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func layout() {
        backgroundColor = .red
    }
}
