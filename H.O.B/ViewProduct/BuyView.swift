//
//  CartView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/24/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class BuyView: UIView {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Buy Item"
        label.font = UIFont.secondaryFont
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productContainer = ProductContainer()
    
    let editSizeLabel: UILabel = {
        let label = UILabel()
        label.text = "Edit Size"
        label.font = UIFont.secondaryFont
        label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sizeLabel: UIButton = {
        let button = UIButton()
        button.setTitle("M", for: .normal)
        button.setTitleColor(UIColor(red: 255/255, green: 215/255,blue: 0/255, alpha: 1.0), for: .normal)
        button.backgroundColor = UIColor.backgroundColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let lineBreak: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    let editColorLabel: UILabel = {
        let label = UILabel()
        label.text = "Edit Color"
        label.font = UIFont.secondaryFont
        label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let colorButton1: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let colorButton2: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let colorButton3: UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let lineBreak2: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    let orderSummaryView = OrderSummaryView()

    let addToCartButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple
        button.layer.cornerRadius = 30
        button.setTitle("Add to Cart", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buyButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 30
        button.setTitle("Buy", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.backgroundColor
        setupTitleLabel()
        setupProductContainer()
        setupEditSizeSection()
        setupEditColorSection()
        setupTotalAmountSection()
    }

    func setupTitleLabel() {
        addSubview(titleLabel)
        
        titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant:  20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
    }
    
    func setupProductContainer() {
        addSubview(productContainer)
        
        productContainer.heightAnchor.constraint(equalToConstant: 200).isActive = true
        productContainer.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        productContainer.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        productContainer.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40).isActive = true
    }
    
    func setupEditSizeSection() {
        addSubview(editSizeLabel)
        addSubview(sizeLabel)
        addSubview(lineBreak)
        
        
        editSizeLabel.topAnchor.constraint(equalTo: productContainer.bottomAnchor, constant: 20).isActive = true
        editSizeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80).isActive = true
        
        sizeLabel.centerYAnchor.constraint(equalTo: editSizeLabel.centerYAnchor).isActive = true
        sizeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        sizeLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        sizeLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        lineBreak.heightAnchor.constraint(equalToConstant: 1.5).isActive = true
        lineBreak.leadingAnchor.constraint(equalTo: editSizeLabel.leadingAnchor).isActive = true
        lineBreak.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        lineBreak.topAnchor.constraint(equalTo: editSizeLabel.bottomAnchor, constant: 20).isActive = true
    }
    
    func setupEditColorSection() {
        addSubview(editColorLabel)
        addSubview(colorButton1)
        addSubview(colorButton2)
        addSubview(colorButton3)
        addSubview(lineBreak2)
        editColorLabel.topAnchor.constraint(equalTo: lineBreak.bottomAnchor, constant: 30).isActive = true
        editColorLabel.leadingAnchor.constraint(equalTo: editSizeLabel.leadingAnchor).isActive = true
        
        colorButton3.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        colorButton3.centerYAnchor.constraint(equalTo: editColorLabel.centerYAnchor).isActive = true
        colorButton3.heightAnchor.constraint(equalToConstant: 40).isActive = true
        colorButton3.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        colorButton2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        colorButton2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        colorButton2.trailingAnchor.constraint(equalTo: colorButton3.leadingAnchor, constant: -10).isActive = true
        colorButton2.centerYAnchor.constraint(equalTo: editColorLabel.centerYAnchor).isActive = true
        
        colorButton1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        colorButton1.widthAnchor.constraint(equalToConstant: 40).isActive = true
        colorButton1.trailingAnchor.constraint(equalTo: colorButton2.leadingAnchor, constant: -10).isActive = true
        colorButton1.centerYAnchor.constraint(equalTo: editColorLabel.centerYAnchor).isActive = true
        
        lineBreak2.leadingAnchor.constraint(equalTo: editColorLabel.leadingAnchor).isActive = true
        lineBreak2.heightAnchor.constraint(equalToConstant: 1.5).isActive = true
        lineBreak2.topAnchor.constraint(equalTo: editColorLabel.bottomAnchor, constant: 20).isActive = true
        lineBreak2.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }

    func setupTotalAmountSection() {
        addSubview(addToCartButton)
        addSubview(buyButton)
        addSubview(orderSummaryView)
        
        orderSummaryView.leadingAnchor.constraint(equalTo: lineBreak2.leadingAnchor).isActive = true
        orderSummaryView.topAnchor.constraint(equalTo: lineBreak2.bottomAnchor, constant: 30).isActive = true
        orderSummaryView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        orderSummaryView.bottomAnchor.constraint(equalTo: addToCartButton.topAnchor).isActive = true
        
       
        addToCartButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        addToCartButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        addToCartButton.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -10).isActive = true
        addToCartButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40).isActive = true
        
        buyButton.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10).isActive = true
        buyButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buyButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        buyButton.centerYAnchor.constraint(equalTo: addToCartButton.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
