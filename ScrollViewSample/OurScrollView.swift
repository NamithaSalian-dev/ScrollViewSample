//
//  OurScrollView.swift
//  ScrollFromScratch
//
//  Created by namitha on 26/09/21.
//  Copyright © 2021 Namitha J. All rights reserved.
//

import UIKit

class OurScrollView: UIView {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panView(with:)))
        addGestureRecognizer(panGesture)
    }
    
    @objc func panView(with gestureRecognizer: UIPanGestureRecognizer) {
        let translation = gestureRecognizer.translation(in: self)
        UIView.animate(withDuration: 0.20) {
            self.bounds.origin.y -= translation.y
        }
        gestureRecognizer.setTranslation(.zero, in: self)
    }
   
}
