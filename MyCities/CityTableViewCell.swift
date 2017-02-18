//
//  CityTableViewCell.swift
//  MyCities
//
//  Created by Carol_G on 2/16/17.
//  Copyright © 2017 Carol_G. All rights reserved.
//

import UIKit

class CityTableViewCell: UITableViewCell {
    
    //MARK: Properties

    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
