//
//  ViewController.swift
//  CBSwiftLearn
//
//  Created by Elaine on 16--9.
//  Copyright © 2016年 yinuo. All rights reserved.
//

import UIKit

let tableViewCellIndex = "SwiftLearnIndex"

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    lazy var arrayData:[[String]] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Swift学习"
        self.initMyView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func registerTableViewCell() {
        self.myTableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: tableViewCellIndex)
    }
    
    func initMyView() {
        self.initArrayData()
        self.registerTableViewCell()
    }

    func initArrayData() {
        arrayData = [["methord","方法"]]
    }

    //MARK: - UITableView Delegate and DataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  self.arrayData.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return  44
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell! = tableView.dequeueReusableCellWithIdentifier(tableViewCellIndex)
     
        cell.textLabel?.text = self.arrayData[indexPath.row][1]
        
        return  cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}

