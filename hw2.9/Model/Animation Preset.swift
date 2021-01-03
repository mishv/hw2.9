//
//  Animation Preset.swift
//  hw2.9
//
//  Created by Misha on 03.01.2021.
//

import Foundation

public enum AnimationPreset: String, CaseIterable {
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case fadeIn
    case fadeOut
    case fadeOutIn
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case fall
    case shake
    case pop
    case flipX
    case flipY
    case morph
    case squeeze
    case flash
    case wobble
    case swing
    
}

extension AnimationPreset {
    static func getAnimationsList() -> [AnimationPreset] {
        return AnimationPreset.allCases
    }
}
