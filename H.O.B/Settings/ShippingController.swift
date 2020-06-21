//
//  ShippingController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/20/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class ShippingController: UIViewController {
    let shippingTitleLabel: UILabel = {
        let label = UILabel()
        label.text = """
        Shipping Policy
        """
        label.textColor = UIColor(red: 255/255, green: 215/255,blue: 0/255, alpha: 1.0)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.productTitleFont
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let returnTitleLabel: UILabel = {
        let label = UILabel()
        label.text = """
        Return & Refund Policy
        """
        label.textColor = UIColor(red: 255/255, green: 223/255,blue: 0/255, alpha: 1.0)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.productTitleFont
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let shippingDescription: UILabel = {
        let label = UILabel()
        label.text = """
        Shipping charges and expected delivery dates are displayed in your shopping cart at the time of your order. This information also appears in your order confirmation email.
        We package and ship your order as soon as we get credit card authorization and verification. Based on our warehouse location and your shipping address, we determine the most efficient shipping carrier for your order. The carriers that may be used include, the U.S. Postal Service (USPS), United Parcel Service (UPS), and FedEx.
        """
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.productDescriptionFont
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let returnDescription: UILabel = {
        let label = UILabel()
        label.text = """
        Items, excluding special orders, gift certificates, stickers, and other products, may be returned for an exchange or refund up to 30 days after the item has been delivered (as indicated by the tracking number). Items returned past the 30 day window will not be exchanged or refunded and we will send you an invoice for shipping to get your original order returned to you.
        All items returned, other than due to defect or shipping error, must be in the original, like-new, re-sellable condition in which they were received. Buyer is responsible for shipping costs incurred for the return or exchange. HAUS OF BARZ will ship an exchanged item back out to the buyer at no cost to the buyer. There is no scenario where the customers shipping fee is refunded.
        Items on sale and/or discontinued items may be returned for store credit only and must still fall within the 30 day window.
        Returns and exchanges may take up to 3 business days to process once we have received the items.
        You may return the items to the address below:
        
        HAUS OF BARZ
        Attn.: Return Dept
        12528 Blissful Sky St.
        Las Vegas, NV 89138
        """
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.productDescriptionFont
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.backgroundColor
        setupShippingTitleLabel()
        setupShippingDescription()
        setupReturnTitleLabel()
        setupReturnDescription()
    }
    
    func setupShippingTitleLabel() {
        view.addSubview(shippingTitleLabel)
        shippingTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        shippingTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    func setupShippingDescription() {
        view.addSubview(shippingDescription)
        shippingDescription.topAnchor.constraint(equalTo: shippingTitleLabel.bottomAnchor, constant: 20).isActive = true
        shippingDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        shippingDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    func setupReturnTitleLabel() {
        view.addSubview(returnTitleLabel)
        returnTitleLabel.topAnchor.constraint(equalTo: shippingDescription.bottomAnchor, constant: 40).isActive = true
        returnTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    func setupReturnDescription() {
        view.addSubview(returnDescription)
        returnDescription.topAnchor.constraint(equalTo: returnTitleLabel.bottomAnchor, constant: 20).isActive = true
        returnDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        returnDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
}
