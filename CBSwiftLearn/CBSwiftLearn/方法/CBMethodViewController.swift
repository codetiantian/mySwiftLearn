//
//  CBMethodViewController.swift
//  CBSwiftLearn
//
//  Created by Elaine on 16--9.
//  Copyright © 2016年 yinuo. All rights reserved.
//

import UIKit

class CBMethodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "方法"
        self.initMyView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initMyView() {
        self.myTest("cuibing", age: 26)
        self.myTest1(name: "cuibing", age: 26)
        self.myTest2("cuibing", 26)
    }
    
    //  修改方法的外部参数名称
    func myTest(strName: String, age: Int) {
        print("年龄为\(age)岁")
    }
    
    //  自己可以为第一个参数添加一个显式的外部名称
    func myTest1(name strName: String, age: Int) {
        print("年龄为\(age)岁")
    }
    
    //  通过使用下划线（_）作为该参数的显式外部名称，这样做将覆盖默认行为
    func myTest2(strName: String, _ age: Int) {
        print("年龄为\(age)岁")
    }

}
