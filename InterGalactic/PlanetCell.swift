//
//  PlanetCell.swift
//  InterGalactic
//
//  Created by Warren Hansen on 11/23/20.
//

import UIKit

class PlanetCell: UITableViewCell {

    @IBOutlet weak var planetImg: UIImageView!
    
    @IBOutlet weak var planetLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
