//
//  CommenDefine.swift
//  SwiftTableViewDemo
//
//  Created by Sunweisheng on 2018/11/7.
//  Copyright © 2018年 Sunweisheng. All rights reserved.
//

import UIKit

let SCREENWIDTH = UIScreen.main.bounds.size.width
let SCREENHEIGHT = UIScreen.main.bounds.size.height

extension UIColor {
    
    public func colorWithHex(rgb:Int, alpha: CGFloat) -> UIColor {
        return UIColor(red: ((CGFloat)((rgb & 0xFF0000) >> 16))/255.0, green: ((CGFloat)((rgb & 0xFF00) >> 8))/255.0, blue: ((CGFloat)(rgb & 0xFF)) / 255.0, alpha: alpha)
    }
    
    // 红色
    class var Red: UIColor {
        return UIColor(red: 252/255.0, green: 106/255.0, blue: 125/255.0, alpha: 1.0)
    }
    
    // 灰色背景颜色
    class var Gray: UIColor {
        return UIColor(red: 242/255.0, green: 243/255.0, blue: 248/255.0, alpha: 1.0)
    }
}

