//
//  ATBouncesItemContentView.swift
//  SwiftDemo
//
//  Created by SimonMiao on 2019/4/24.
//  Copyright © 2019 avatar. All rights reserved.
//

import UIKit

class ATBouncesItemContentView: ATBaseItemContentView {

    public var duration = 0.3
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func selectAnimation(animated: Bool, completion: (() -> ())?) {
        self.bounceAnimation()
        completion?()
    }
    
    override func reselectAnimation(animated: Bool, completion: (() -> ())?) {
        self.bounceAnimation()
        completion?()
    }
    
    func bounceAnimation() {
        let impliesAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        impliesAnimation.values = [1.0 ,1.4, 0.9, 1.15, 0.95, 1.02, 1.0]
        impliesAnimation.duration = duration * 2
        impliesAnimation.calculationMode = CAAnimationCalculationMode.cubic//kCAAnimationCubic
        imageView.layer.add(impliesAnimation, forKey: nil)
    }
}
