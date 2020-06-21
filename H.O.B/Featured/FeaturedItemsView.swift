//
//  FeaturedItemsView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/5/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class FeaturedItemsView: UIView {
    
    var header: UILabel = {
        let label = UILabel()
        label.text = "Featured"
        label.font = UIFont.secondaryFont
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.backgroundColor
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.backgroundColor
        collectionView.register(FeaturedItemCell.self, forCellWithReuseIdentifier: "cell")
        
        self.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height).isActive = true
        
        setupHeader()
        setupCollectionView()
    }

    func setupHeader() {
        addSubview(header)
        header.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        header.topAnchor.constraint(equalTo: topAnchor, constant: 85).isActive = true
    }
    
    func setupCollectionView(){
        addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 15).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/1.35).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
