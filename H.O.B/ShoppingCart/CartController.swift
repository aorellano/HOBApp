//
//  CartController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/24/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CartController: UIViewController {
    let cartView = CartView()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = cartView
    }
}
