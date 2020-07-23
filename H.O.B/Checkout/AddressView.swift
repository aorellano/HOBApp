//
//  AddressView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 7/6/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class AddressView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        
//        translatesAutoresizingMaskIntoConstraints = false
//
        heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height).isActive = true
//        heightAnchor.

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
