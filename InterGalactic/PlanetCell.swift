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
        planetImg.layer.cornerRadius = 10
        // Configure the view for the selected state
    }

    func configureCell(planet: String) {
        planetImg.image = UIImage(named: planet)
        planetLabel.text = planet
    }
}
