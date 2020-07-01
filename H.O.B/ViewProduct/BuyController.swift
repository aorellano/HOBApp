//
//  CartController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/24/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class BuyController: UIViewController {
    let buyView = BuyView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buyView.addToCartButton.addTarget(self, action: #selector(checkoutButtonPressed), for: .touchUpInside)
        buyView.buyButton.addTarget(self, action: #selector(buyButtonPressed), for: .touchUpInside)
    }
    
    @objc func buyButtonPressed() {
       let vc = CheckoutController()
        navigationController?.pushViewController(vc, animated: false)
    }
    
    @objc func checkoutButtonPressed() {
        let vc = CartController()
        vc.modalPresentationStyle = .pageSheet
        present(vc, animated: true)
    }
    
    override func loadView() {
        view = buyView
    }
}
