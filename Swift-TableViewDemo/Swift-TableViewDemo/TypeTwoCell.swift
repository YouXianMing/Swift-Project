//
//  TypeTwoCell.swift
//  Swift-TableViewDemo
//
//  Created by YouXianMing on 15/9/28.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

import UIKit

class TypeTwoCell: BaseTableViewCell {

    override func cellSetup() {
        
        super.cellSetup()
        self.backgroundColor = UIColor.yellowColor().colorWithAlphaComponent(0.5)
    }
    
    override func loadData() {
        
        self.textLabel?.text = "\(self.data as! String)"
    }
}
