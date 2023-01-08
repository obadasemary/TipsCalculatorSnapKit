//
//  UIView+Extension.swift
//  TipsCalculatorSnapKit
//
//  Created by Abdelrahman Mohamed on 9.01.2023.
//

import UIKit

extension UIView {

    func addShadow(
        offset: CGSize,
        color: UIColor,
        radius: CGFloat,
        opacity: Float
    ) {
        layer.cornerRadius = radius
        layer.masksToBounds = false
        layer.shadowOffset = offset
        layer.shadowColor = color.cgColor
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity

        let backgroundCGColor = backgroundColor?.cgColor
        backgroundColor = nil
        layer.backgroundColor = backgroundCGColor
    }
}
