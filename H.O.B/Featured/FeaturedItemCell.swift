//
//  FeaturedItemCell.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/5/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class FeaturedItemCell: UICollectionViewCell {
    let productTitle: UILabel = {
        let label = UILabel()
        label.text = "Mask"
        label.font = UIFont.productTitleFont
        label.font = UIFont.systemFont(ofSize: 28, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productDescription: UILabel = {
        let label = UILabel()
        label.text = "Shop the latest masks. Starting at $6 dollars and rep the haus of barz logo"
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.productDescriptionFont
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "mask1")
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let buyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Buy", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 20
        setupProductTitle()
        setupProductDescription()
        setupProductImage()
    }
    
    func setup(_ title: String, _ image: UIImage) {
        self.productTitle.text = title
        self.productImage.image = image
    }
    
    func setupProductTitle() {
        addSubview(productTitle)
        
        productTitle.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
        productTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
    }
    
    func setupProductDescription() {
        addSubview(productDescription)
        
        productDescription.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 20).isActive = true
        productDescription.leadingAnchor.constraint(equalTo: productTitle.leadingAnchor).isActive = true
        productDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
    }
    
    func setupProductImage() {
        addSubview(productImage)
        
        productImage.topAnchor.constraint(equalTo: productDescription.bottomAnchor, constant: 40).isActive = true
        productImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        productImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        productImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
