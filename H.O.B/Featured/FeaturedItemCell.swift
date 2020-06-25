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
        label.textColor = .black
        label.font = UIFont.productTitleFont
        label.font = UIFont.systemFont(ofSize: 28, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productDescription: UILabel = {
        let label = UILabel()
        label.text = "Shop the latest masks. Starting at $6 dollars and rep the haus of barz logo"
        label.textColor = .black
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
        button.setTitleColor(UIColor(red: 60/255, green: 180/255, blue: 255/255, alpha: 1.0), for: .normal)
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.08)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 20
        setupProductTitle()
        setupProductDescription()
        setupBuyButton()
        setupProductImage()
       
        
    }
    
    func setup(_ title: String, _ image: UIImage) {
        self.productTitle.text = title
        print("THis is it \(String(describing: productTitle.text))")
        self.productImage.image = image
    }
    
    func setupProductTitle() {
        addSubview(productTitle)
        
        productTitle.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
        productTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
    }
    
    func setupProductDescription() {
        addSubview(productDescription)
        
        productDescription.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 15).isActive = true
        productDescription.leadingAnchor.constraint(equalTo: productTitle.leadingAnchor).isActive = true
        productDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
    }
    
    func setupProductImage() {
        addSubview(productImage)
        
        productImage.topAnchor.constraint(equalTo: productDescription.bottomAnchor, constant: 40).isActive = true
        productImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        productImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        productImage.bottomAnchor.constraint(equalTo: buyButton.topAnchor, constant: -2).isActive = true
    }
    
    func setupBuyButton() {
        addSubview(buyButton)
        buyButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        buyButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        buyButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
