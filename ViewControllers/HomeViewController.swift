//
//  HomeViewController.swift
//  Peetz
//
//  Created by Mitchell Socia on 2/5/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var animationView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupImageViewAnimation()
        animationView.startAnimating()
        
    }
    
    private func setupImageViewAnimation() {
        animationView.animationImages = [#imageLiteral(resourceName: "pizza1"),#imageLiteral(resourceName: "pizza2"),#imageLiteral(resourceName: "pizza3"),#imageLiteral(resourceName: "pizza4"),#imageLiteral(resourceName: "pizza3"),#imageLiteral(resourceName: "pizza2"),#imageLiteral(resourceName: "pizza1")]
        animationView.animationDuration = 1
    }
    
    @IBAction func buttonPress(_ sender: Any) {
        
    }
    
    
}
