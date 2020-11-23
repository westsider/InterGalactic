//
//  PlanetPickerVC.swift
//  InterGalactic
//
//  Created by Warren Hansen on 11/23/20.
//

import UIKit

class PlanetPickerVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let planets = ["sun", "mercury", "venus", "earth", "earth-night", "moon", "mars", "jupiter", "saturn", "uranus", "neptune"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
    }

}

extension PlanetPickerVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath) as? PlanetCell {
            cell.configureCell(planet:  planets[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
