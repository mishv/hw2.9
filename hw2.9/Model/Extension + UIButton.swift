//
//  UIButton + Extension.swift
//  hw2.9
//
//  Created by Misha on 02.01.2021.
//

import UIKit

extension UIButton {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        
        pulse.fromValue = 0.7
        pulse.toValue = 1
        pulse.duration = 1
        
        layer.add(pulse, forKey: nil)
    }
}


