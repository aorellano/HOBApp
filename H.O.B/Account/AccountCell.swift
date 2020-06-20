//
//  AccountDataSource.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/19/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class AccountCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

