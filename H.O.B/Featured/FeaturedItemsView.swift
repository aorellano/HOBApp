//
//  FeaturedItemsView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/5/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class FeaturedItemsView: UIView {
    let cellScale: CGFloat = 0.6
    
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
        
        let cellWidth = floor(UIScreen.main.bounds.width * 0.85)
        let cellHeight = floor(UIScreen.main.bounds.height * 0.6)
        let insetX = (UIScreen.main.bounds.width - cellWidth) / 2.0
        let insetY = (UIScreen.main.bounds.height - cellHeight) / 2.0
        
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        collectionView.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        
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
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/1.35).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


