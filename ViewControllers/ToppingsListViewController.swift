//
//  ToppingsListViewController.swift
//  Peetz
//
//  Created by Mitchell Socia on 2/5/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit

// MARK: - Data

var toppingsCategories = [
    ToppingCategory(categoryName: "Vegetables", toppings: ["Tomato", "Onion", "Spinach", "Green Olive", "Black Olive", "Mild Pepper", "Green Pepper", "Mushroom", "Jalapeño", "Basil"]),
    ToppingCategory(categoryName: "Meats", toppings: ["Pepperoni", "Ham", "Bacon", "Ground Beef", "Sausage", "Anchovie", "Chicken", "Salami"]),
    ToppingCategory(categoryName: "Misc.", toppings: ["Pineapple", "Pickle", "Garlic"])
]

    let SectionHeaderHeight: CGFloat = 50
    var toppingsChoice = [String]()


class ToppingsListViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - TableView Setup
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toppingsCategories[section].categoryName.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toppingCell", for: indexPath)
        let toppingForCell = toppingsCategories[indexPath.section].toppings[indexPath.row]
        cell.textLabel?.text = toppingForCell
        
        if toppingsChoice.contains(toppingForCell) {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return toppingsCategories.count
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        
//    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return SectionHeaderHeight
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return toppingsCategories[section].categoryName
    }
    
    
    
}
