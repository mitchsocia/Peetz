//
//  ToppingCategory.swift
//  Peetz
//
//  Created by Mitchell Socia on 2/5/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import Foundation

class ToppingCategory {
    
    var categoryName: String
    var toppings: [String]
    
    init(categoryName: String, toppings: [String]) {
        self.categoryName = categoryName
        self.toppings = toppings
    }
        
}

enum Catergory {
    case veggie
    case meat
}
