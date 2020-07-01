//
//  ImageCell.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/26/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class ImageCell: UICollectionViewCell {
    let productImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "shorts")
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupProductImage()
    }
    
    func setup(_ image: UIImage) {
        productImage.image = image
    }
    
    func setupProductImage() {
        addSubview(productImage)
        
        productImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        productImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        productImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        productImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
