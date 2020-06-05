//
//  HeaderView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/4/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    var header: UILabel = {
        let label = UILabel()
        label.text = "H A U S   O F   B A R Z"
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.primaryFont
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var line1: UILabel = {
        let label = UILabel()
        label.text = "U N L E A S H"
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.secondaryFont
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var line2: UILabel = {
        let label = UILabel()
        label.text = "F R O M"
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.secondaryFont
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line3: UILabel = {
        let label = UILabel()
        label.text = "B E N E A T H"
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.secondaryFont
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var backgroundImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "small")
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var container: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.25)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        setupBackground()
        setupHeader()
    }
    
    func setupBackground() {
        addSubview(backgroundImage)
        
        backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    func setupHeader() {
        addSubview(header)
        addSubview(line1)
        addSubview(line2)
        addSubview(line3)

        header.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -150).isActive = true
        header.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        line1.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -60).isActive = true
        line1.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 20).isActive = true
        line2.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        line2.topAnchor.constraint(equalTo: line1.bottomAnchor).isActive = true
        line3.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 70).isActive = true
        line3.topAnchor.constraint(equalTo: line2.bottomAnchor).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
