//
//  StringAttribute.swift
//  Swift-StringAttribute
//
//  Created by YouXianMing on 15/10/8.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

import UIKit

class StringAttribute: NSObject, StringAttributeProtocol {

    // MARK: 公用的属性
    
    /// 富文本生效范围
    var effectRange : NSRange! = NSMakeRange(0, 0)
    
    // MARK: 公用的方法
    
    /**
    属性有效范围
    
    - returns: 有效范围
    */
    func effectiveStringRange() -> NSRange {
    
        return effectRange
    }
    
    // MARK: ==由子类重写的方法==
    
    /**
    /////////////////
        由子类重写
    /////////////////
    
    属性名字
    
    - returns: 属性名字
    */
    func attributeName() -> NSString {
        
        fatalError("must be overwrote by subclass")
    }
    
    /**
    /////////////////
        由子类重写
    /////////////////
    
    属性值
    
    - returns: 属性值
    */
    func attributeValue()-> AnyObject {
        
        fatalError("must be overwrote by subclass")
    }
}
