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
        
        toppingDisplayLabelOne.text = removeDuplicates(array: toppingCombinations).randomElement()
        toppingDisplayLabelTwo.text = removeDuplicates(array: toppingCombinations).randomElement()
        
    }
    
    func removeDuplicates(array: [String]) -> [String] {
        var encountered = Set<String>()
        var result: [String] = []
        for value in array {
            if encountered.contains(value) {
                // Do not add a duplicate element.
            }
            else {
                // Add value to the set.
                encountered.insert(value)
                // ... Append the value.
                result.append(value)
            }
        }
        return result
    }
    
    
}
