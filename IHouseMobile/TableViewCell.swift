//
//  TableViewCell.swift
//  IHouseMobile
//
//  Created by Add Creative Inc. on 18.06.16.
//  Copyright © 2016 DevLabs. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelname: UILabel!
    @IBOutlet weak var labelSystem: UILabel!
    @IBOutlet weak var labelcount: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
