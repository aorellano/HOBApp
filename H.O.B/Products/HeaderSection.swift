//
//  HeaderSection.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/30/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class HeaderSection: UICollectionReusableView {
    let collectionTitle: UILabel = {
        let label = UILabel()
        label.text = "Collection"
        label.font = UIFont.secondaryFont
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.backgroundColor
        setupCollectionTitle()
    }
    
    func setupCollectionTitle() {
        addSubview(collectionTitle)
        collectionTitle.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        collectionTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
