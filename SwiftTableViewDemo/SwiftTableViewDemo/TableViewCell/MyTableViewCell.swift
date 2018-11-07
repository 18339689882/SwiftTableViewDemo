//
//  MyTableViewCell.swift
//  SwiftTableViewDemo
//
//  Created by Sunweisheng on 2018/11/7.
//  Copyright © 2018年 Sunweisheng. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    var imgView: UIImageView?
    var titleLab: UILabel?
    var timeLab: UILabel?
    
    func setModel(obj:News) -> Void {
        imgView?.image = UIImage(named: obj.imgName!)
        titleLab?.text = obj.titleName
        timeLab?.text = obj.timeStr
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        imgView = UIImageView(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        self.contentView.addSubview(imgView!)
        
        titleLab = UILabel(frame: CGRect(x: 90, y: 10, width: SCREENWIDTH - 100, height: 40))
        titleLab!.font = UIFont.systemFont(ofSize: 14)
        titleLab?.backgroundColor = UIColor.white
        titleLab?.textColor = UIColor.Red
        titleLab?.textAlignment = NSTextAlignment.center
        titleLab?.numberOfLines = 2
        contentView.addSubview(titleLab!)
        
        timeLab = UILabel(frame: CGRect(x: 90, y: 50, width: SCREENWIDTH - 100, height: 40))
        timeLab!.font = UIFont.systemFont(ofSize: 14)
        timeLab?.textAlignment = .center
        timeLab?.textColor = UIColor.Gray
        contentView.addSubview(timeLab!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
