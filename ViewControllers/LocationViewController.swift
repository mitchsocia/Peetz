//
//  LocationViewController.swift
//  Peetz
//
//  Created by Mitchell Socia on 2/18/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit
import GooglePlaces

class LocationViewController: UIViewController, CLLocationManagerDelegate {
    
    var locations = [String]()
    
    let locationManager = CLLocationManager()
    
    var placesClient: GMSPlacesClient!
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        if CLLocationManager.authorizationStatus() == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
        }
        placesClient = GMSPlacesClient.shared()
        
        
        placesClient.currentPlace { (placeLikelihoodList, error) -> Void in
            if let error = error {
                print("Pick Place Error: \(error.localizedDescription)")
                return
            }
            
            self.nameLabel.text = "No current place"
            self.addressLabel.text = "____"
            
            // guard here
            if let placeLikelihoodList = placeLikelihoodList {
                let place = placeLikelihoodList.likelihoods.first?.place
                if let place = place {
                    
                    self.nameLabel.text = place.name
                    self.addressLabel.text = place.formattedAddress?.components(separatedBy: ", ").joined(separator: "\n")
                    
                }
            }
        }
        
    }
    
}
