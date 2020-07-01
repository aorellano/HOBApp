//
//  CartCell.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/25/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CartCell: UITableViewCell {
    let imageContainer: UIView = {
        let container = UIView()
        container.backgroundColor = .white
        container.layer.cornerRadius = 10
        container.layer.masksToBounds = true
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()

    let productImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "shorts")
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let productTitle: UILabel = {
        let label = UILabel()
        label.text = "Camo Shorts"
        label.font = UIFont.secondaryFont
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productPrice: UILabel = {
        let label = UILabel()
        label.text = "$35.00"
        label.textColor = .lightGray
        label.font = UIFont.collectionTitleFont
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = UIColor.backgroundColor
        contentView.backgroundColor = UIColor.backgroundColor
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupContentView()
    }
    
    
    func setupContentView() {
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
        setupImageContainer()
        setupProductTitle()
        setupProductPrice()
    }
    
    func setupImageContainer() {
        contentView.addSubview(imageContainer)
        contentView.addSubview(productImage)
        
        imageContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        imageContainer.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        imageContainer.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/4).isActive = true
        
        productImage.leadingAnchor.constraint(equalTo: imageContainer.leadingAnchor).isActive = true
        productImage.topAnchor.constraint(equalTo: imageContainer.topAnchor).isActive = true
        productImage.bottomAnchor.constraint(equalTo: imageContainer.bottomAnchor).isActive = true
        productImage.trailingAnchor.constraint(equalTo: imageContainer.trailingAnchor).isActive = true
    }
    
    func setupProductTitle() {
        contentView.addSubview(productTitle)
        
        productTitle.leadingAnchor.constraint(equalTo: imageContainer.trailingAnchor, constant: 40).isActive = true
        productTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        
    }
    
    func setupProductPrice() {
        contentView.addSubview(productPrice)
        
        productPrice.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 10).isActive = true
        productPrice.leadingAnchor.constraint(equalTo: productTitle.leadingAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
