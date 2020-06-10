//
//  CollectionsDataSource.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/6/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CollectionsDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionsCell
        return cell
    }
}
