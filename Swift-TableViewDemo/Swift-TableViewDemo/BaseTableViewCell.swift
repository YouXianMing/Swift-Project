//
//  BaseTableViewCell.swift
//  Swift-TableViewDemo
//
//  Created by YouXianMing on 15/9/28.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {

    weak var indexPath : NSIndexPath?
    weak var tableView : UITableView?
    weak var data      : AnyObject?
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        cellSetup()
        
        buildSubViews()
    }
    
    func cellSetup() {
    
        self.selectionStyle = .None
    }
    
    func buildSubViews() {
    
    }
    
    func loadData() {
    
    }
}
