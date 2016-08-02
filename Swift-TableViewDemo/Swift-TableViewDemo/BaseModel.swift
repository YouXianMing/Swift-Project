//
//  BaseModel.swift
//  Swift-TableViewDemo
//
//  Created by YouXianMing on 15/9/28.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

import UIKit

class BaseModel: NSObject {

    var cellFlag   : String?
    var cellHeight : CGFloat?
    var data       : AnyObject?

    init(flag : String, cellHeight : CGFloat, data : AnyObject) {
        
        super.init()
        self.cellFlag   = flag
        self.cellHeight = cellHeight
        self.data       = data
    }
}
