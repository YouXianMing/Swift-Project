//
//  ForegroundColorAttribute.swift
//  TableViewDemos
//
//  Created by YouXianMing on 15/10/8.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

import UIKit

class ForegroundColorAttribute: StringAttribute {

    var color : UIColor!
    
    override func attributeName() -> NSString {
        
        return NSForegroundColorAttributeName
    }
    
    override func attributeValue() -> AnyObject {
        
        if let _ = color {
            
            return color
            
        } else {
            
            return UIColor.blackColor()
        }
    }
}
