//
//  ProductCategoriesViews.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/6/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CategoryView: UIView {
    let header: UILabel = {
        let header = UILabel()
        header.text = "Shop by Collection"
        header.font = UIFont.secondaryFont
        header.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        header.textColor = UIColor.primaryFontColor
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    
    let productsCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.backgroundColor = .backgroundColor
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: "cell2")
        collectionView.isScrollEnabled = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.heightAnchor.constraint(equalToConstant: 1.65*UIScreen.main.bounds.height).isActive = true
        
        backgroundColor = .backgroundColor
        setupHeader()
        setupProductsCollectionView()
        self.layoutIfNeeded()
    }
    
    func setupHeader() {
        addSubview(header)
        header.topAnchor.constraint(equalTo: topAnchor).isActive = true
        header.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
    }
    
    func setupProductsCollectionView() {
        addSubview(productsCollectionView)
        
        productsCollectionView.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 40).isActive = true
        productsCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        productsCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
       // productsCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        productsCollectionView.heightAnchor.constraint(equalToConstant: (1.55*UIScreen.main.bounds.height)).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
