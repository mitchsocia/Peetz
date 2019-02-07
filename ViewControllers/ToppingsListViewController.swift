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

// MARK: -
    let SectionHeaderHeight: CGFloat = 50
    var toppingsChoice = [String]()


class ToppingsListViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    // MARK: - TableView Setup
    
    // Row counting
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toppingsCategories[section].categoryName.count
    }
    
    // Setting the cells
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
    
    // Sections (Vegetable, Meats, etc.)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return toppingsCategories.count
    }
    
    // Specific details/style for Section Header
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.backgroundView?.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.9372549057, blue: 0.9568627477, alpha: 1)
        header.textLabel?.textColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        header.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 18)
    }
    
    // Height for Section Header Title
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return SectionHeaderHeight
    }
    
    // Title displayed in Sectin Header
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return toppingsCategories[section].categoryName
    }
    
    // Checkmark functionality (Adding to array of the toppingsChoice)
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
                
                toppingsChoice.append(toppingsCategories[indexPath.section].toppings[indexPath.row])
                
            } else {
                cell.accessoryType = .none
                toppingsChoice.removeAll { (string) -> Bool in
                    string == toppingsCategories[indexPath.section].toppings[indexPath.row]
                }
            }
            
        }
        print(toppingsChoice)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
