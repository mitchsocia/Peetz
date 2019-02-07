//
//  FavoritesViewController.swift
//  Peetz
//
//  Created by Mitchell Socia on 2/7/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit

class FavoritesViewController: UITableViewController {
    
    var favoritesChoice = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritesChoice.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favorite", for: indexPath)
        cell.textLabel?.text = ""
        
//        Once we have an array to hold the favorites
//        let favoriteCell = favorites[indexPath.row]
//        cell.textLabel?.text = favoriteCell
//
//        if favoritesChoice.contains(favoriteCell) {
//            cell.accessoryType = .checkmark
//        } else {
//            cell.accessoryType = .none
//        }
//
        return cell
    }

    /*
     Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
     Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
         Return false if you do not want the item to be re-orderable.
        return true
    }
    */

}
