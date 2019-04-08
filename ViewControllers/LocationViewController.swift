//
//  LocationViewController.swift
//  Peetz
//
//  Created by Mitchell Socia on 2/18/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit
import Alamofire
import GooglePlaces

class LocationViewController: UIViewController {
    
    var placesClient: GMSPlacesClient!

    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
