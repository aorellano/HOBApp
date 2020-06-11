//
//  MotivationView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/9/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class MotivationView: UIView {
    let headerTitle: UILabel = {
        let label = UILabel()
        label.text = "Motivational Stories"
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.secondaryFont
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let motivationImage: UIImageView = {
        let image = UIImage(named: "encouragment.png")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTitle: UILabel = {
        let label = UILabel()
        label.text = "TURNING MY ANXIETY INTO MY POWERHOUSE"
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.collectionTitleFont
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionParagraph: UILabel = {
        let label = UILabel()
        label.text = """
        Never did I think I would be living with anxiety. It is something that affects your every day lifestyle. In the past, I did not understand why people made it such a big deal. felt as if it something that could easily be pushed aside and brushed off, but it was me actually sulking in my own ignorance. Unfortunately, as humans, we don’t begin to understand things until we actually experience them Through devastating life experiences...
        """
        label.font = UIFont.productDescriptionFont
        label.textColor = UIColor.primaryFontColor
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let readMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Read More", for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.backgroundColor
        self.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height).isActive = true
        setupHeaderTitle()
        setupMotivationImage()
        setupDescriptionTitle()
        setupDescriptionParagraph()
        setupButton()
    }
    
    func setupHeaderTitle() {
        addSubview(headerTitle)
        
        headerTitle.topAnchor.constraint(equalTo: topAnchor).isActive = true
        headerTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    }
    
    func setupMotivationImage() {
        addSubview(motivationImage)
        
        motivationImage.topAnchor.constraint(equalTo: headerTitle.bottomAnchor, constant: 40).isActive = true
        motivationImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        motivationImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        motivationImage.heightAnchor.constraint(equalToConstant: 400).isActive = true
    }
    
    func setupDescriptionTitle() {
        addSubview(descriptionTitle)
        
        descriptionTitle.topAnchor.constraint(equalTo: motivationImage.bottomAnchor, constant: 40).isActive = true
        descriptionTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        descriptionTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -20).isActive = true
    }
    
    func setupDescriptionParagraph() {
        addSubview(descriptionParagraph)
        
        descriptionParagraph.topAnchor.constraint(equalTo: descriptionTitle.bottomAnchor, constant: 40).isActive = true
        descriptionParagraph.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        descriptionParagraph.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
    }
    
    func setupButton() {
        addSubview(readMoreButton)
        
        readMoreButton.bottomAnchor.constraint(equalTo: descriptionParagraph.bottomAnchor, constant: 80).isActive = true
        readMoreButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        readMoreButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        readMoreButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
