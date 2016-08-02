//
//  ViewController.swift
//  Swift-StringAttribute
//
//  Created by YouXianMing on 15/10/8.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

import UIKit

import UIKit

class ViewController: UIViewController {
    
    var label  : UILabel!
    var string : NSMutableAttributedString!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        createString()
        
        createLabel()
    }
    
    func createString() {
        
        // 创建富文本
        string = NSMutableAttributedString(string: "JiKeXueYuan")
        
        // 创建字体属性
        let labelFont : FontAttribute! = FontAttribute()
        labelFont.effectRange          = NSMakeRange(0, string.length)
        labelFont.font                 = UIFont(name: "AppleSDGothicNeo-Light", size: 28)
        
        // 字体颜色
        let labelColor : ForegroundColorAttribute! = ForegroundColorAttribute()
        labelColor.effectRange                     = NSMakeRange(3, 4)
        labelColor.color                           = UIColor.redColor()
        
        // 添加各种属性
        string.addStringAttribute(labelFont)
        string.addStringAttribute(labelColor)
    }
    
    func createLabel() {
        
        // 进行显示
        label                = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 80))
        label.center         = view.center
        label.textAlignment  = .Center
        label.attributedText = string
        view.addSubview(label)
    }
}

