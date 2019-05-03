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
        
        func createSpinnerView() {
            let child = SpinnerViewController()
            
            addChild(child)
            child.view.frame = view.frame
            view.addSubview(child.view)
            child.didMove(toParent: self)
            
            
            
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
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    child.willMove(toParent: nil)
                    child.view.removeFromSuperview()
                    child.removeFromParent()
                    
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
}
