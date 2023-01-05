//
//  LabelFactory.swift
//  TipsCalculatorSnapKit
//
//  Created by Abdelrahman Mohamed on 5.01.2023.
//

import UIKit

struct LabelFactory {

    static func build(
        text: String?,
        font: UIFont,
        backgroundColor: UIColor = .clear,
        textColor: UIColor = ThemeColor.textColor,
        textAlignment: NSTextAlignment = .center
    ) -> UILabel {

        let label = UILabel()
        label.text = text
        label.font = font
        label.backgroundColor = backgroundColor
        label.textColor = textColor
        label.textAlignment = textAlignment
        return label
    }
}
