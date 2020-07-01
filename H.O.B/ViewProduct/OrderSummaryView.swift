//
//  OrderSummaryView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/24/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class OrderSummaryView: UIView {
    let orderSummary: UILabel = {
         let label = UILabel()
         label.text = "Order Summary"
         label.font = UIFont.secondaryFont
         label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
         label.textColor = .white
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
     
     let subTotalLabel: UILabel = {
         let label = UILabel()
         label.text = "Subtotal"
         label.textColor = .white
         label.font = UIFont.collectionTitleFont
         label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
     
     let shippingLabel: UILabel = {
         let label = UILabel()
         label.text = "Shipping"
         label.textColor = .white
         label.font = UIFont.collectionTitleFont
         label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
     
     let lineBreak3: UIView = {
         let line = UIView()
         line.backgroundColor = .gray
         line.translatesAutoresizingMaskIntoConstraints = false
         return line
     }()
     
     let dropDownButton = DropDownButton()
     
     let totalAmountLabel: UILabel = {
         let label = UILabel()
         label.text = "Total:"
         label.font = UIFont.secondaryFont
         label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
         label.textColor = .white
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
     
     let subTotalPriceLabel: UILabel = {
         let label = UILabel()
         label.text = "$8.00"
         label.font = UIFont.collectionTitleFont
         label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
         label.textColor = .white
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
     
     let shippingPriceLabel: UILabel = {
         let label = UILabel()
         label.text = "$5.00"
         label.font = UIFont.collectionTitleFont
         label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
         label.textColor = .white
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
     
     let totalPriceLabel: UILabel = {
         let label =  UILabel()
         label.text = "$13.00"
         label.font = UIFont.collectionTitleFont
         label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
         label.textColor = .white
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
     
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupOrderSummary()
        setupTotalAmountSection()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func setupOrderSummary() {
        addSubview(orderSummary)
        addSubview(subTotalLabel)
        addSubview(subTotalPriceLabel)
        addSubview(shippingLabel)
        addSubview(shippingPriceLabel)
        addSubview(dropDownButton)
        addSubview(lineBreak3)
        
        orderSummary.topAnchor.constraint(equalTo: topAnchor).isActive = true
        orderSummary.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        subTotalLabel.leadingAnchor.constraint(equalTo: orderSummary.leadingAnchor).isActive = true
        subTotalLabel.topAnchor.constraint(equalTo: orderSummary.bottomAnchor, constant: 20).isActive = true
        
        subTotalPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        subTotalPriceLabel.centerYAnchor.constraint(equalTo: subTotalLabel.centerYAnchor).isActive = true
        
        
        shippingLabel.leadingAnchor.constraint(equalTo: orderSummary.leadingAnchor).isActive = true
        shippingLabel.topAnchor.constraint(equalTo: subTotalLabel.bottomAnchor, constant: 10).isActive = true
        shippingPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        shippingPriceLabel.centerYAnchor.constraint(equalTo: shippingLabel.centerYAnchor).isActive = true
        
        dropDownButton.topAnchor.constraint(equalTo: shippingLabel.bottomAnchor, constant: 15).isActive = true
        dropDownButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        dropDownButton.leadingAnchor.constraint(equalTo: shippingLabel.leadingAnchor).isActive = true
        dropDownButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        
        lineBreak3.leadingAnchor.constraint(equalTo: orderSummary.leadingAnchor).isActive = true
        lineBreak3.heightAnchor.constraint(equalToConstant: 1.5).isActive = true
        lineBreak3.topAnchor.constraint(equalTo: dropDownButton.bottomAnchor, constant: 20).isActive = true
        lineBreak3.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    func setupTotalAmountSection() {
        addSubview(totalAmountLabel)
        addSubview(totalPriceLabel)
        
        totalAmountLabel.topAnchor.constraint(equalTo: lineBreak3.bottomAnchor, constant: 30).isActive = true
        totalAmountLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
               
        totalPriceLabel.centerYAnchor.constraint(equalTo: totalAmountLabel.centerYAnchor).isActive = true
        totalPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
               

    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
