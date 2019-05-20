//
//  FavoritesCollectionViewController.swift
//  Peetz
//
//  Created by Mitchell Socia on 4/23/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FavoritesCollectionViewController: UICollectionViewController {

    var favsList = [String]()
    
    @IBOutlet weak var cellLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        print(favsList)

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return favsList.count - 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favsList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        
        if let label = cell.viewWithTag(100) as? UILabel {
            label.text = favsList[indexPath.row]
        }
        return cell
    }

 

}

