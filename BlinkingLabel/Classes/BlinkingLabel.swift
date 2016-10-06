//
//  BlinkingLabel.swift
//  Pods
//
//  Created by chenyijun on 16/10/6.
//
//

import Foundation
open class BlinkingLabel : UILabel {
    open func startBlinking() {
        let options : UIViewAnimationOptions = [.repeat, .autoreverse]
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
            }, completion: nil)
    }
    
    open func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
