//
//  ViewController.swift
//  Swift-TableViewDemo
//
//  Created by YouXianMing on 15/9/28.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let typeOneCellFlag : String! = "typeOneCellFlag"
    let typeTwoCellFlag : String! = "typeTwoCellFlag"
    
    var datasArray : NSMutableArray!
    var tableView  : UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.initDatasArray()
        
        self.initTableView()
    }

    // 数据源相关
    func initDatasArray() {
    
        datasArray = NSMutableArray()
        datasArray.addObject(TypeOneModel(flag: typeOneCellFlag, cellHeight: 100, data: "TypeOneModel"))
        datasArray.addObject(TypeTwoModel(flag: typeTwoCellFlag, cellHeight: 200, data: "TypeTwoModel"))
    }
    
    // tableView相关
    func initTableView() {
    
        tableView = UITableView(frame: view.bounds, style: .Plain)
        tableView.delegate       = self
        tableView.dataSource     = self
        tableView.separatorStyle = .None
        view.addSubview(tableView)
        
        tableView.registerClass(TypeOneCell.classForCoder(), forCellReuseIdentifier: typeOneCellFlag)
        tableView.registerClass(TypeTwoCell.classForCoder(), forCellReuseIdentifier: typeTwoCellFlag)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return datasArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let model : BaseModel! = datasArray[indexPath.row] as! BaseModel
        
        let cell : BaseTableViewCell! = tableView.dequeueReusableCellWithIdentifier(model.cellFlag!) as! BaseTableViewCell
        cell.tableView                = tableView
        cell.indexPath                = indexPath
        cell.data                     = model.data
        cell.loadData()
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        let model : BaseModel! = datasArray[indexPath.row] as! BaseModel
        
        return model.cellHeight!
    }
}

