//
//  ColorsDataSource.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/26/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//
import UIKit

class ColorsDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "color", for: indexPath)
        if indexPath.row  == 0 {
            cell.backgroundColor = .darkGray
        } else if indexPath.row == 1 {
            cell.backgroundColor = .black
        } else {
            cell.backgroundColor = .white
        }
        cell.layer.cornerRadius = 20
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.lightGray.cgColor
        return cell
    }
}
