//
//  News.swift
//  SwiftTableViewDemo
//
//  Created by Sunweisheng on 2018/11/7.
//  Copyright © 2018年 Sunweisheng. All rights reserved.
//

import UIKit

class News: NSObject {
    
    var imgName, titleName, timeStr: String?

    init(iName: String, tName: String, time: String){
        super.init()
        imgName = iName
        titleName = tName
        timeStr = time
    }
}
