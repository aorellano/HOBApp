//
//  HeaderView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/4/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    var header1: UILabel = {
        let label = UILabel()
        label.text = """
        H A U S
        """
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.primaryFont
        label.font = UIFont.systemFont(ofSize: 64, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var header2: UILabel = {
        let label = UILabel()
        label.text = """
        O F
        """
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.primaryFont
        label.font = UIFont.systemFont(ofSize: 55, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var header3: UILabel = {
        let label = UILabel()
        label.text = """
        B A R Z
        """
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.primaryFont
        label.font = UIFont.systemFont(ofSize: 64, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var headerImage: UIImageView = {
        let image = UIImage(named: "splash")
        let imageView = UIImageView()
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var line1: UILabel = {
        let label = UILabel()
        let attributes1 = [NSAttributedString.Key.foregroundColor: UIColor(red: 255/255, green: 215/255, blue: 0/255, alpha: 1.0)]
        let attributes2 = [NSAttributedString.Key.foregroundColor: UIColor.white]
        let attributedLetter = NSMutableAttributedString(string: "H", attributes: attributes1)
        let attributedString = NSMutableAttributedString(string: "U  N  L  E  A  S  ", attributes: attributes2)
        attributedString.append(attributedLetter)
        label.attributedText = attributedString
        label.font = UIFont.descriptionFont
        label.font = UIFont.systemFont(ofSize: 20, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var line2: UILabel = {
        let label = UILabel()
        let attributes1 = [NSAttributedString.Key.foregroundColor: UIColor(red: 255/255, green: 215/255, blue: 0/255, alpha: 1.0)]
        let attributes2 = [NSAttributedString.Key.foregroundColor: UIColor.white]
        let attributedLetter = NSMutableAttributedString(string: "  O  ", attributes: attributes1)
        let attributedStringFirst = NSMutableAttributedString(string: "F  R", attributes: attributes2)
        let attributedStringLast = NSMutableAttributedString(string: "M", attributes: attributes2)
        attributedStringFirst.append(attributedLetter)
        attributedStringFirst.append(attributedStringLast)
        label.attributedText = attributedStringFirst
        label.font = UIFont.descriptionFont
        label.font = UIFont.systemFont(ofSize: 20, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line3: UILabel = {
        let label = UILabel()
        let attributes1 = [NSAttributedString.Key.foregroundColor: UIColor(red: 255/255, green: 215/255, blue: 0/255, alpha: 1.0)]
        let attributes2 = [NSAttributedString.Key.foregroundColor: UIColor.white]
        let attributedLetter = NSMutableAttributedString(string: "B  ", attributes: attributes1)
        let attributedString = NSMutableAttributedString(string: "E  N  E  A  T  H", attributes: attributes2)
        attributedLetter.append(attributedString)
        label.attributedText = attributedLetter
        label.font = UIFont.descriptionFont
        label.font = UIFont.systemFont(ofSize: 20, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .black

        setupHeader()
        
        self.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height).isActive = true
    }
    
    func setupHeader() {
        addSubview(header1)
        addSubview(header2)
        addSubview(header3)
        addSubview(headerImage)
        addSubview(line1)
        addSubview(line2)
        addSubview(line3)

        header1.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 90).isActive = true
        header1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        header2.topAnchor.constraint(equalTo: header1.bottomAnchor).isActive = true
        header2.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        header3.topAnchor.constraint(equalTo: header2.bottomAnchor).isActive = true
        header3.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        headerImage.heightAnchor.constraint(equalToConstant: 250).isActive = true
        headerImage.widthAnchor.constraint(equalToConstant: 150).isActive = true
        headerImage.topAnchor.constraint(equalTo: header3.bottomAnchor).isActive = true
        headerImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        line1.topAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: 20).isActive = true
        line2.topAnchor.constraint(equalTo: line1.bottomAnchor).isActive = true
        line3.topAnchor.constraint(equalTo: line2.bottomAnchor).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
