//
//  StringAttributeProtocol.swift
//  Swift-StringAttribute
//
//  Created by YouXianMing on 15/10/8.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

import Foundation

@objc protocol StringAttributeProtocol {

    /**
    富文本属性名字
    
    - returns: 属性名字
    */
    func attributeName() -> NSString;
    
    /**
    属性对应的值
    
    - returns: 对应的值
    */
    func attributeValue()-> AnyObject;
    
    /**
    属性设置生效范围
    
    - returns: 生效范围
    */
    optional func effectiveStringRange() -> NSRange;
}