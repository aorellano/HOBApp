//
//  ProductContainer.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/25/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class ProductContainer: UIView {
    let productContainer: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
        container.layer.cornerRadius = 30
       
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()

    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Shorts"
        label.textColor = .white
        label.font = UIFont.collectionTitleFont
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "$20.00"
        label.textColor = .white
        label.font = UIFont.collectionTitleFont
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let imageContainer: UIView = {
        let container = UIView()
        container.backgroundColor = .white
        container.layer.cornerRadius = 30
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

    let quantityContainer: UIView = {
        let container = UIView()
        container.backgroundColor = .white
        container.layer.cornerRadius = 10
        container.layer.masksToBounds = true
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()

    let quantityLessButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.layer.borderWidth = 0.50
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let quantityMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.layer.borderWidth = 0.50
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let quantityNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "01"
        label.font = UIFont.collectionTitleFont
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setupProductContainer()
        setupImageContainer()
        setupQuantityContainer()
    }
    
    func setupProductContainer() {
        addSubview(productContainer)
        productContainer.addSubview(descriptionLabel)
        productContainer.addSubview(priceLabel)
        
        productContainer.topAnchor.constraint(equalTo: topAnchor).isActive = true
        productContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        productContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        productContainer.heightAnchor.constraint(equalToConstant: 160).isActive = true
        
        descriptionLabel.leadingAnchor.constraint(equalTo: productContainer.leadingAnchor, constant: 35).isActive = true
        descriptionLabel.centerYAnchor.constraint(equalTo: productContainer.centerYAnchor, constant: -20).isActive = true
        
        priceLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8).isActive = true
        priceLabel.centerXAnchor.constraint(equalTo: descriptionLabel.centerXAnchor).isActive = true

    }
    
    func setupImageContainer() {
        productContainer.addSubview(imageContainer)
        imageContainer.addSubview(productImage)
        
        imageContainer.topAnchor.constraint(equalTo: productContainer.topAnchor).isActive = true
        imageContainer.trailingAnchor.constraint(equalTo: productContainer.trailingAnchor).isActive = true
        imageContainer.leadingAnchor.constraint(equalTo: productContainer.centerXAnchor).isActive = true
        imageContainer.bottomAnchor.constraint(equalTo: productContainer.bottomAnchor).isActive = true
        
        productImage.leadingAnchor.constraint(equalTo: imageContainer.leadingAnchor, constant: 5).isActive = true
        productImage.trailingAnchor.constraint(equalTo: imageContainer.trailingAnchor, constant: -5).isActive = true
        productImage.topAnchor.constraint(equalTo: imageContainer.topAnchor, constant: 5).isActive = true
        productImage.bottomAnchor.constraint(equalTo: imageContainer.bottomAnchor, constant: -5).isActive = true
    }
    
    func setupQuantityContainer() {
        productContainer.addSubview(quantityContainer)
        quantityContainer.addSubview(quantityLessButton)
        quantityContainer.addSubview(quantityMoreButton)
        quantityContainer.addSubview(quantityNumberLabel)
        
        quantityContainer.centerYAnchor.constraint(equalTo: productContainer.bottomAnchor).isActive = true
        quantityContainer.heightAnchor.constraint(equalToConstant: 40).isActive = true
        quantityContainer.widthAnchor.constraint(equalToConstant: 150).isActive = true
        quantityContainer.leadingAnchor.constraint(equalTo: productContainer.leadingAnchor, constant: 20).isActive = true
        
        quantityLessButton.leadingAnchor.constraint(equalTo: quantityContainer.leadingAnchor).isActive = true
        quantityLessButton.topAnchor.constraint(equalTo: quantityContainer.topAnchor).isActive = true
        quantityLessButton.bottomAnchor.constraint(equalTo: quantityContainer.bottomAnchor).isActive = true
        quantityLessButton.widthAnchor.constraint(equalToConstant: 150/3).isActive = true
        
        quantityMoreButton.trailingAnchor.constraint(equalTo: quantityContainer.trailingAnchor).isActive = true
        quantityMoreButton.topAnchor.constraint(equalTo: quantityContainer.topAnchor).isActive = true
        quantityMoreButton.bottomAnchor.constraint(equalTo: quantityContainer.bottomAnchor).isActive = true
        quantityMoreButton.widthAnchor.constraint(equalToConstant: 150/3).isActive = true
        
        
        quantityNumberLabel.centerXAnchor.constraint(equalTo: quantityContainer.centerXAnchor).isActive = true
        quantityNumberLabel.centerYAnchor.constraint(equalTo: quantityContainer.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

