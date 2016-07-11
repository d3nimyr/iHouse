//
//  ProjectCollectionViewCell.swift
//  IHouseMobile
//
//  Created by Add Creative Inc. on 17.06.16.
//  Copyright © 2016 DevLabs. All rights reserved.
//

import UIKit

class ProjectCollectionViewCell: UICollectionViewCell {
 
    @IBOutlet weak var lablos: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buyButton.layer.cornerRadius = 15
        buyButton.layer.borderWidth = 2
        buyButton.layer.borderColor = UIColor.whiteColor().CGColor
    }
}
