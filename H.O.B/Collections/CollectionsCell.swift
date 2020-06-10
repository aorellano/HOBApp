//
//  CollectionsCell.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/6/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CollectionsCell: UICollectionViewCell {
    let productTitle: UILabel = {
        let label = UILabel()
        label.text = "Mens"
        label.font = UIFont.productTitleFont
        label.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    let productImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "mens")
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .backgroundColor
        setupProductTitle()
        setupProductImage()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = self.contentView.frame.inset(by: UIEdgeInsets(top: 2.5, left: 2.5, bottom: 2.5, right: 2.5))
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 20
        contentView.layer.masksToBounds = true
    }
    
    func setupProductTitle() {
        addSubview(productTitle)
        
        productTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        productTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    }
    
   
    func setupProductImage() {
        addSubview(productImage)
        
        productImage.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 40).isActive = true
        productImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        productImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        productImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
