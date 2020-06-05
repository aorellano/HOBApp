//
//  HomeView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/3/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class HomeView: UIView {
    var headerSection = HeaderView()
    
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
    
    var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        setupScrollView()
        setupHeaderView()
        setupStackView()
    }
    
    func setupScrollView() {
        addSubview(scrollView)
        
        scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func setupHeaderView() {
        scrollView.addSubview(headerSection)
        
        headerSection.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: -50).isActive = true
        headerSection.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        headerSection.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        headerSection.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height+50).isActive = true
    }
    
    func setupStackView(){
        scrollView.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: headerSection.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
