//
//  imagesDataSource.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/26/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//
import UIKit

class ImagesDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "image", for: indexPath) as! ImageCell
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 10
        
        cell.layer.borderWidth = 1.5
        if indexPath.row == 0 {
            let image = UIImage(named: "shorts")!
            cell.layer.borderColor = UIColor.systemBlue.cgColor
            cell.setup(image)
        } else {
            let image = UIImage(named: "shorts2")!
            cell.setup(image)
            cell.layer.borderColor = UIColor.lightGray.cgColor
        }
        return cell
    }
}
