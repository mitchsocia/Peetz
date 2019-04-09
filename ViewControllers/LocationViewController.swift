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

class LocationViewController: UIViewController, CLLocationManagerDelegate {
    
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

    }
    
    @IBAction func getCurrentPlace(_ sender: UIButton) {
        
        placesClient.currentPlace { (placeLikelihoodList, error) -> Void in
            if let error = error {
                print("Pick Place Error: \(error.localizedDescription)")
                return
            }
            
            self.nameLabel.text = "No current place"
            self.addressLabel.text = "____"
            
            if let placeLikelihoodList = placeLikelihoodList {
                let place = placeLikelihoodList.likelihoods.first?.place
                if let place = place {
                    self.nameLabel.text = place.name
                    self.addressLabel.text = place.formattedAddress?.components(separatedBy: ", ").joined(separator: "\n")
                    
                    print(place.name ?? "No name")
                    print(place.formattedAddress ?? "None")
                    print(place.coordinate.latitude)
                    print(place.coordinate.longitude)
                    
                }
            }
        }
        
    }
    
}
