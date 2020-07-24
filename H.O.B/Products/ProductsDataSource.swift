//
//  ProductsDataSource.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/30/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class ProductsDataSource: NSObject, UICollectionViewDataSource {
    var data = [Product]()

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "product", for: indexPath) as! ProductCell
        let product = object(at: indexPath)
        cell.setup(product)
        cell.productImage.downloadImage(url: URL(string: "http://127.0.0.1:8000"+product.image!))
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind:  UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header", for: indexPath) as! HeaderSection
        
        return sectionHeader
    }

}

extension ProductsDataSource {
    func object(at indexPath: IndexPath) -> Product {
        return data[indexPath.row]
    }
    
    func update(with data: [Product]) {
        self.data = data
    }
}
