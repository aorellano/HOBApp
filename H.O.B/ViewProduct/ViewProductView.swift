//
//  ViewProduct.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/25/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//
import UIKit

class ViewProductView: UIView {
    let imageContainer: UIView = {
        let container = UIView()
        container.backgroundColor = .white
        container.layer.masksToBounds = true
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()

    let productImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "shorts")
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imagesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 70, height: 70)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.white
        collectionView.layer.cornerRadius = 30
        collectionView.register(ImageCell.self, forCellWithReuseIdentifier: "image")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    let lineBreak: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    let productTitle: UILabel = {
        let label = UILabel()
        label.text = "Camo Shorts"
        label.font = UIFont.secondaryFont
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productPrice: UILabel = {
        let label = UILabel()
        label.text = "$35.00"
        label.textColor = .white
        label.font = UIFont.collectionTitleFont
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productDescription: UILabel = {
        let label = UILabel()
        label.text = """
        Our Midweight Fleece Short has a relaxed fit. It is made with quality midweight fabric (premium ring-spun cotton) to achieve a smooth and stable fabric.
        """
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textColor = .white
        label.font = UIFont.collectionTitleFont
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let colorsTitle: UILabel = {
        let label = UILabel()
        label.text = "Colors"
        label.textColor = .white
        label.font = UIFont.collectionTitleFont
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let colorsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 40, height: 40)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.backgroundColor
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "color")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    let cartButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 20
        button.setTitle("Add to Cart", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.backgroundColor
        setupImageContainer()
        setupImagesCollectionView()
        setupProductTitle()
        setupProductDescription()
        setupColorsCollectionView()
        setupCartButton()
    }

    func setupImageContainer() {
        addSubview(imageContainer)
        imageContainer.addSubview(productImage)
        
        imageContainer.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageContainer.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageContainer.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageContainer.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/2.6).isActive = true
        //imageContainer.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        productImage.leadingAnchor.constraint(equalTo: imageContainer.leadingAnchor).isActive = true
        productImage.trailingAnchor.constraint(equalTo: imageContainer.trailingAnchor).isActive = true
        productImage.topAnchor.constraint(equalTo: imageContainer.topAnchor, constant: 30).isActive = true
        productImage.bottomAnchor.constraint(equalTo: imageContainer.bottomAnchor, constant: -40).isActive = true
    }
    
    func setupImagesCollectionView() {
        addSubview(imagesCollectionView)
        //addSubview(lineBreak)
        
        imagesCollectionView.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: -5).isActive = true
        imagesCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imagesCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imagesCollectionView.heightAnchor.constraint(equalToConstant: 125).isActive = true
        
//        lineBreak.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
//        lineBreak.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
//        lineBreak.topAnchor.constraint(equalTo: imagesCollectionView.bottomAnchor).isActive = true
//        lineBreak.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    func setupProductTitle() {
        addSubview(productTitle)
        productTitle.topAnchor.constraint(equalTo: imagesCollectionView.bottomAnchor, constant: 15).isActive = true
        productTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    }
    
    func setupProductDescription() {
        addSubview(productPrice)
        addSubview(productDescription)
        
        productPrice.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 10).isActive = true
        productPrice.leadingAnchor.constraint(equalTo: productTitle.leadingAnchor).isActive = true
        
        productDescription.topAnchor.constraint(equalTo: productPrice.bottomAnchor, constant: 10).isActive = true
        productDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        productDescription.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    func setupColorsCollectionView() {
        addSubview(colorsTitle)
        
        colorsTitle.topAnchor.constraint(equalTo: productDescription.bottomAnchor, constant: 10).isActive = true
        colorsTitle.leadingAnchor.constraint(equalTo: productTitle.leadingAnchor).isActive = true
        
        addSubview(colorsCollectionView)
        
        colorsCollectionView.topAnchor.constraint(equalTo: colorsTitle.bottomAnchor, constant: 10).isActive = true
        colorsCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        colorsCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        colorsCollectionView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupCartButton() {
        addSubview(cartButton)
        
        cartButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40).isActive = true
        cartButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        cartButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        cartButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
