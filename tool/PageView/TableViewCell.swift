//
//  TableViewCell.swift
//  PageViewDemo
//
//  Created by 韩梓健 on 2019/3/3.
//  Copyright © 2019 yangqianhua. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
