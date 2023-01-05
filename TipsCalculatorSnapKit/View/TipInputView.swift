//
//  TipInputView.swift
//  TipsCalculatorSnapKit
//
//  Created by Abdelrahman Mohamed on 4.01.2023.
//

import UIKit

class TipInputView: UIView {

    init() {
        super.init(frame: .zero)
        layout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func layout() {
        backgroundColor = .systemPink
    }
}
