//
//  CombinationResultViewController.swift
//  Peetz
//
//  Created by Mitchell Socia on 4/18/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit

class CombinationResultViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFav" {
            if let destination = segue.destination as? FavoritesCollectionViewController {
                destination.favsList.append(contentsOf: favoritesToBeAdded)
            }
        }
    }

    var favoritesToBeAdded = [String]()
    
    var toppingCombinations = Set<String>()
    
    @IBAction func addFavButton(_ sender: Any) {
        
        if let fav = toppingDisplayLabelOne.text {
            favoritesToBeAdded.append(fav)
        }
        if let fav2 = toppingDisplayLabelTwo.text {
            favoritesToBeAdded.append(fav2)
        }
        
        print(favoritesToBeAdded)
        
    }
    
    @IBOutlet weak var toppingDisplayLabelOne: UILabel!
    
    @IBOutlet weak var toppingDisplayLabelTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toppingDisplayLabelOne.text = toppingCombinations.pop()
        toppingDisplayLabelTwo.text = toppingCombinations.pop()

    }
    
}

extension Set {
    
    mutating func pop() -> Element? {
        guard let item = randomElement() else {
            return nil
        }
        remove(item)
        return item
    }
    
}
