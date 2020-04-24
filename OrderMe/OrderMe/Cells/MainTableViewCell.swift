//
//  MainTableViewCell.swift
//  OrderMe
//
//  Created by Oleg Ten on 4/24/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var addresLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
