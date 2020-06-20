//
//  TestCell.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/19/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class TestCell: UICollectionViewCell {
    let productTitle: UILabel = {
        let label = UILabel()
        label.text = "What People Say"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.productTitleFont
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productDescription: UILabel = {
        let label = UILabel()
        label.text = "David Hernandez"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.productDescriptionFont
         label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "mask1")
        imageView.image = image
        imageView.layer.cornerRadius = 80
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let statement: UILabel = {
        let label = UILabel()
        label.text = """
I have seen this company grow from a small idea to what it is now. The founder is the most hard-working person I have had the pleasure of getting to know. She puts her heart and soul into everything. She even put her life on the line to save someone else's. She is a HERO.
"""
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.productDescriptionFont
         label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 20
        setupProductTitle()
        
        setupProductImage()
        setupStatement()
        setupProductDescription()
    }
    
    func setupProductTitle() {
        addSubview(productTitle)
        
        productTitle.topAnchor.constraint(equalTo: topAnchor).isActive = true
        productTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    func setupProductDescription() {
        addSubview(productDescription)
        
        productDescription.topAnchor.constraint(equalTo: statement.bottomAnchor, constant: 20).isActive = true
        productDescription.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    func setupProductImage() {
        addSubview(productImage)
        
        productImage.heightAnchor.constraint(equalToConstant: 160).isActive = true
        productImage.widthAnchor.constraint(equalToConstant: 160).isActive = true
        
        productImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        productImage.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 20).isActive = true
//
//        productImage.topAnchor.constraint(equalTo: productDescription.bottomAnchor, constant: 40).isActive = true
//        productImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
//        productImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
//        productImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
    
    func setupStatement() {
        addSubview(statement)
        
        statement.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 20).isActive = true
        statement.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        statement.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
