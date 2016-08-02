//
//  FontAttribute.swift
//  TableViewDemos
//
//  Created by YouXianMing on 15/10/8.
//  Copyright © 2015年 ZiPeiYi. All rights reserved.
//

import UIKit

class FontAttribute: StringAttribute {

    var font : UIFont!
    
    override func attributeName() -> NSString {
        
        return NSFontAttributeName
    }
    
    override func attributeValue() -> AnyObject {
        
        if let _ = font {
        
            return font
            
        } else {
        
            return UIFont.systemFontOfSize(12)
        }
    }
}
