//
//  TestDataSource.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/19/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class TestDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Testimonial.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testCell", for: indexPath) as! TestCell
        cell.setup(UIImage(named: "\(Testimonial.images[indexPath.row])")!)
        return cell
    }
    
}
