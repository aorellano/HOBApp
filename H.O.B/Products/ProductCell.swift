//
//  ProductCell.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/30/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    let productTitle: UILabel = {
        let label = UILabel()
        label.text = "Masks"
        label.font = UIFont.collectionTitleFont
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
     }()
     
     let productImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "shorts")
        imageView.image = image
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
     }()
    
    let priceTitle: UILabel = {
        let label = UILabel()
        label.text = "$8.00"
        label.font = UIFont.collectionTitleFont
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
     
     override init(frame: CGRect) {
        super.init(frame: frame)
         
        backgroundColor = .white
        self.layer.cornerRadius = 15
        self.clipsToBounds = true
        setupPriceTitle()
        setupProductTitle()
        setupProductImage()
     }
    
    func setup(_ product: Product) {
        productTitle.text = product.name
        priceTitle.text = "$"+String(format: "%.2f", product.price as! CVarArg)
    }

    
//     func setup(_ category: String) {
//         productTitle.text = category
//     }
//
//     override func layoutSubviews() {
//         super.layoutSubviews()
//
//         contentView.frame = self.contentView.frame.inset(by: UIEdgeInsets(top: 2.5, left: 2.5, bottom: 2.5, right: 2.5))
//         contentView.backgroundColor = .white
//         contentView.layer.cornerRadius = 20
//         contentView.layer.masksToBounds = true
//     }
    
    func setupProductImage() {
        addSubview(productImage)
        
        productImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        productImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        productImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        productImage.bottomAnchor.constraint(equalTo: productTitle.topAnchor, constant: -10).isActive = true
    }
    
    func setupProductTitle() {
        addSubview(productTitle)
        
        productTitle.bottomAnchor.constraint(equalTo: priceTitle.topAnchor, constant: -5).isActive = true
        productTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }

    func setupPriceTitle() {
        addSubview(priceTitle)
        
        priceTitle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        priceTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
