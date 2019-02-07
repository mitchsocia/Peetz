//
//  AboutViewController.swift
//  Peetz
//
//  Created by Mitchell Socia on 2/7/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        aboutTextView.text = "Here's what it's about."
    }
    
    @IBOutlet weak var aboutTextView: UITextView!
    

}
