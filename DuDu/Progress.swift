//
//  Progress.swift
//  DuDu
//
//  Created by Kyle on 15/9/13.
//  Copyright © 2015年 kyle. All rights reserved.
//

import UIKit

@IBDesignable class Progress: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    */
    

    required init(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    
    override func drawRect(rect: CGRect) {
        let r:CGFloat = rect.width/2
        
        CGContextAddArc(UIGraphicsGetCurrentContext(), r, r, r, 0, CGFloat(M_PI*2), 0)
        CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), r, r)
        CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 1, 0, 0, 1)
        CGContextFillPath(UIGraphicsGetCurrentContext())
        
    }


}
