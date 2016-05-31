//
//  TYStoryboardTableViewCell.swift
//  CellTypeTableView
//
//  Created by 汤义 on 16/5/30.
//  Copyright © 2016年 汤义. All rights reserved.
//

import UIKit

class TYStoryboardTableViewCell: UITableViewCell {
     private var img : UIImageView?
    func logic(str : String) -> Void {
        if img == nil {
            img = UIImageView.init(frame: CGRectMake(10, 0, 20, 20))
        }
//        img?.hidden = true
        img?.image = UIImage(named: "xiaotu")
        self.addSubview(img!)
        if str == "1" {
            img?.hidden = false
        }else{
            img?.hidden = true
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
