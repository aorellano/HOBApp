//
//  CartView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/25/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CartView: UIView {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Cart"
        label.font = UIFont.secondaryFont
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let tableView: UITableView = {
        let tableView =  UITableView()
        tableView.register(CartCell.self, forCellReuseIdentifier: "cart")
        tableView.backgroundColor = UIColor.backgroundColor
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let totalAmountLabel: UILabel = {
        let label = UILabel()
        label.text = "Subtotal:"
        label.font = UIFont.secondaryFont
        label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let totalPriceLabel: UILabel = {
        let label =  UILabel()
        label.text = "$60.00"
        label.font = UIFont.collectionTitleFont
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let checkoutButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 20
        button.setTitle("Checkout", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let lineBreak: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.backgroundColor
        self.translatesAutoresizingMaskIntoConstraints = false 
        
        self.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/2).isActive = true
        
        setupTitleLabel()
        setupCheckoutButton()
        setupOrderSummary()
        setupTableView()
        
    }
    
    func setupTitleLabel() {
        addSubview(titleLabel)
        
        titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant:  30).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
    }
    
    func setupTableView() {
        addSubview(tableView)
        
        tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: lineBreak.topAnchor).isActive = true
    }
    
    func setupOrderSummary() {
        addSubview(totalAmountLabel)
        addSubview(totalPriceLabel)
        addSubview(lineBreak)
        totalAmountLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        totalPriceLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        totalAmountLabel.bottomAnchor.constraint(equalTo: checkoutButton.topAnchor, constant: -20).isActive = true
        totalAmountLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80).isActive = true
               
        totalPriceLabel.centerYAnchor.constraint(equalTo: totalAmountLabel.centerYAnchor).isActive = true
        totalPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        
        lineBreak.bottomAnchor.constraint(equalTo: totalAmountLabel.topAnchor, constant: -10).isActive = true
        lineBreak.leadingAnchor.constraint(equalTo: totalAmountLabel.leadingAnchor).isActive = true
        lineBreak.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        lineBreak.heightAnchor.constraint(equalToConstant: 1.5).isActive = true
    }
    
    func setupCheckoutButton() {
        addSubview(checkoutButton)
        
        checkoutButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        checkoutButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        checkoutButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        checkoutButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
