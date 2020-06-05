//
//  HomeView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/3/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class HomeView: UIView {
    
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
    
    var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = .purple
        view.isScrollEnabled = true
        view.indicatorStyle = .black
        view.showsVerticalScrollIndicator = true
        view.isUserInteractionEnabled = true
    
        view.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 1000)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        
        backgroundColor = .blue
        setupScrollView()
        setupBackgroundImage()
        setupHeading()
    }
    
    func setupScrollView() {
        addSubview(scrollView)
        
        scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func setupBackgroundImage() {
        scrollView.addSubview(backgroundImage)
        scrollView.addSubview(container)
        
        backgroundImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        container.topAnchor.constraint(equalTo: topAnchor).isActive = true
        container.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        
    }
    
    func setupHeading() {
        scrollView.addSubview(header)
        scrollView.addSubview(line1)
        scrollView.addSubview(line2)
        scrollView.addSubview(line3)

        header.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 225).isActive = true
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
