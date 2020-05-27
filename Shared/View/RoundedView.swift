//
//  RoundedView.swift
//  Shopper
//
//  Created by Rizwana on 5/27/20.
//  Copyright © 2020 makeurway.com. All rights reserved.
//

import Foundation
import  UIKit
class RoundedButton : UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
}
class RoundedShadowView : UIView {
    override func awakeFromNib() {
         super.awakeFromNib()
        layer.cornerRadius = 5
        layer.shadowColor = AppColors.blue.cgColor
        // It is measue of how tranparent is our shadow 0 is total tranparent and 1 is completly opaque
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 3
        
        
        
       }
}

class RoundedImageView : UIImageView {
    override func awakeFromNib() {
         super.awakeFromNib()
           layer.cornerRadius = 5
       }
}
