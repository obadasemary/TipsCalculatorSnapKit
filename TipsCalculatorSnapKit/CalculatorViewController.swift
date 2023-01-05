//
//  ViewController.swift
//  TipsCalculatorSnapKit
//
//  Created by Abdelrahman Mohamed on 4.01.2023.
//

import UIKit
import SnapKit

class CalculatorViewController: UIViewController {

    private let logoView = LogoView()
    private let resultView = ResultView()
    private let billInputView = BillInputView()
    private let tipInputView = TipInputView()
    private let splitInputView = SplitInputView()

    private lazy var verticalStackView: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                logoView,
                resultView,
                billInputView,
                tipInputView,
                splitInputView,
                UIView()
            ]
        )
        stackView.axis = .vertical
        stackView.spacing = 36
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        layout()
    }

    private func layout() {

        view.backgroundColor = ThemeColor.backgroundColor
        view.addSubview(verticalStackView)

        verticalStackView.snp.makeConstraints { make in
            make.top.equalTo(view.snp_topMargin).offset(16)
            make.leading.equalTo(view.snp_leadingMargin).offset(16)
            make.trailing.equalTo(view.snp_trailingMargin).offset(-16)
            make.bottom.equalTo(view.snp_bottomMargin).offset(-16)
        }

        logoView.snp.makeConstraints { make in
            make.height.equalTo(48)
        }

        resultView.snp.makeConstraints { make in
            make.height.equalTo(224)
        }

        billInputView.snp.makeConstraints { make in
            make.height.equalTo(56)
        }

        tipInputView.snp.makeConstraints { make in
            make.height.equalTo(56+56+16)
        }

        splitInputView.snp.makeConstraints { make in
            make.height.equalTo(56)
        }
    }
}

