//
//  AmountView.swift
//  TipsCalculatorSnapKit
//
//  Created by Abdelrahman Mohamed on 8.01.2023.
//

import UIKit

class AmountView: UIView {

    private let title: String
    private let textAlignment: NSTextAlignment

    private lazy var titleLabel: UILabel = {
        LabelFactory.build(
            text: title  ,
            font: ThemeFont.regular(ofSize: 18),
            textColor: ThemeColor.textColor,
            textAlignment: textAlignment
        )
    }()

    private lazy var amountLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = textAlignment
        label.textColor = ThemeColor.primaryColor
        let text = NSMutableAttributedString(
            string: "$0",
            attributes: [
                .font: ThemeFont.bold(ofSize: 24)
            ]
        )
        text.addAttributes(
            [
                .font: ThemeFont.bold(ofSize: 16)
            ],
            range: NSMakeRange(0, 1)
        )
        label.attributedText = text
        return label
    }()

    lazy var stackView: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                titleLabel,
                amountLabel
            ]
        )
        stackView.axis = .vertical
        return stackView
    }()

    init(
        title: String,
        textAlignment: NSTextAlignment
    ) {
        self.title = title
        self.textAlignment = textAlignment
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func layout() {
        addSubview(stackView)

        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
