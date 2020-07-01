//
//  ProductsDataSource.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/30/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class ProductsDataSource: NSObject, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "product", for: indexPath) as! ProductCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind:  UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header", for: indexPath) as! HeaderSection
        
        return sectionHeader
    }

}
