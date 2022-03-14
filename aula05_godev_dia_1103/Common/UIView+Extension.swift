//
//  UIView+Extension.swift
//  aula05_godev_dia_1103
//
//  Created by Victor Pizetta on 12/03/22.
//

import UIKit

extension UIView {
    
    func gradientBackGround(firstColor: UIColor, secondColor: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
        gradientLayer.locations = [0.4, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
