//
//  LogoView.swift
//  TipsCalculatorSnapKit
//
//  Created by Abdelrahman Mohamed on 4.01.2023.
//

import UIKit

class LogoView: UIView {

    private let imageView: UIImageView = {
        let view  = UIImageView(image: .init(named: "icCalculatorBW"))
        view.contentMode = .scaleAspectFit
        return view
    }()

    lazy var topLabel: UILabel = {
        let label = UILabel()
        let text = NSMutableAttributedString(
            string: "Mr TIP",
            attributes: [
                .font: ThemeFont.demibold(ofSize: 16)
            ]
        )
        text.addAttributes(
            [
                .font: ThemeFont.bold(ofSize: 24)
            ],
            range: NSMakeRange(3, 3)
        )
        label.attributedText = text
        return label
    }()

    lazy var bottomLabel: UILabel = {
        LabelFactory.build(
            text: "Calculator",
            font: ThemeFont.demibold(ofSize: 20),
            textAlignment: .left
        )
    }()

    lazy var verticalStackView: UIStackView = {
        let view = UIStackView(
            arrangedSubviews: [
                topLabel,
                bottomLabel
            ]
        )
        view.axis = .vertical
        view.spacing = -4
        view.alignment = .center
        return view
    }()

    lazy var horizontalStackView: UIStackView = {
        let view = UIStackView(
            arrangedSubviews: [
                imageView,
                verticalStackView
            ]
        )
        view.axis = .horizontal
        view.spacing = 8
        view.alignment = .center
        return view
    }()

    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout() {

        addSubview(horizontalStackView)

        horizontalStackView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        imageView.snp.makeConstraints { make in
            make.height.equalTo(imageView.snp.width)
        }
    }
}
