//
//  CollectionsDataSource.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/6/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CategoryDataSource: NSObject, UICollectionViewDataSource {
    var categories = [Category]()
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CategoryCell
        cell.setup(Category.titles[indexPath.row])
        return cell
    }
}

//extension CategoryDataSource {
//    func object(at indexPath: IndexPath) -> Category {
//        return categories[indexPath.row]
//    }
//
//    func update(with categories: [Category]) {
//        self.categories = categories
//    }
//}
