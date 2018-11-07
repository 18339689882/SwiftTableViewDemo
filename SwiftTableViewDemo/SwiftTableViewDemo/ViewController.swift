//
//  ViewController.swift
//  SwiftTableViewDemo
//
//  Created by Sunweisheng on 2018/11/7.
//  Copyright © 2018年 Sunweisheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var objArr: Array<News> = []
    var aTableView:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initTableView()
        
        self .loadNewData()
    }

    func initTableView() -> Void {
        aTableView = UITableView(frame: self.view.bounds)
        
        aTableView!.register(MyTableViewCell.self, forCellReuseIdentifier: "MyTableViewCell")
        
        aTableView?.delegate = self
        aTableView?.dataSource = self
        aTableView?.rowHeight = 90
        view.addSubview(aTableView!)
    }
    
    func loadNewData() -> Void {
        for i in 0...9 {
            let new: News = News.init(iName: String.localizedStringWithFormat("%d.jpg", i), tName: "我是你的小苹果", time: "2014-13-41")
            objArr.append(new)
        }
    }
    
//----------tableViewDelegate----------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objArr.count
    }
//----------tableViewDataSource----------
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model:News = objArr[indexPath.row]
        
        let cell: MyTableViewCell = tableView .dequeueReusableCell(withIdentifier: "MyTableViewCell") as! MyTableViewCell
        
        cell .setModel(obj: model)
        
        return cell;
    }
}



