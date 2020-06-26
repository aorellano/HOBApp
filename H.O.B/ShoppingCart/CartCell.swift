//
//  CartCell.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/25/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CartCell: UITableViewCell {
    let productContainer = ProductContainer()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupProductContainer()
        backgroundColor = UIColor.backgroundColor
    }
    
    func setupProductContainer() {
        addSubview(productContainer)
        
        productContainer.heightAnchor.constraint(equalToConstant: 200).isActive = true
        productContainer.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        productContainer.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        productContainer.topAnchor.constraint(equalTo: topAnchor).isActive = true
        productContainer.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
