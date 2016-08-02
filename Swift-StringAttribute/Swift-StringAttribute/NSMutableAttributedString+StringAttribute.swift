//
//  NSMutableAttributedString+StringAttribute.swift
//  Swift-StringAttribute
//
//  Created by YouXianMing on 15/10/8.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

import Foundation

extension NSMutableAttributedString {

    /**
    添加富文本对象
    
    - parameter stringAttribute: 实现了StringAttributeProtocol协议的对象
    */
    func addStringAttribute(stringAttribute : StringAttributeProtocol) {
    
        self.addAttribute(stringAttribute.attributeName() as String,
            value: stringAttribute.attributeValue(),
            range: stringAttribute.effectiveStringRange!())
    }
    
    /**
    消除指定的富文本对象
    
    - parameter stringAttribute: 实现了StringAttributeProtocol协议的对象
    */
    func removeStringAttribute(stringAttribute : StringAttributeProtocol) {
    
        self.removeAttribute(stringAttribute.attributeName() as String,
            range: stringAttribute.effectiveStringRange!())
    }
}