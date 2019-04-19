//
//  CombinationResultViewController.swift
//  Peetz
//
//  Created by Mitchell Socia on 4/18/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit

class CombinationResultViewController: UIViewController {

    var toppingCombinations = [String]()
    
    @IBOutlet weak var toppingDisplayLabelOne: UILabel!
  
    @IBOutlet weak var toppingDisplayLabelTwo: UILabel!
    
    
    @IBAction func goBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toppingDisplayLabelOne.text = toppingCombinations.randomElement()
        toppingDisplayLabelTwo.text = toppingCombinations.randomElement()
        
    }
  

}
