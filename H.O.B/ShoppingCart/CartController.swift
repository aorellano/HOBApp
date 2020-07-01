//
//  CartController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/25/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CartController: UIViewController{
    let cartView = CartView()
    let dataSource = CartDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartView.tableView.dataSource = dataSource
        cartView.tableView.delegate = self
        
        cartView.checkoutButton.addTarget(self, action: #selector(checkoutButtonPressed), for: .touchUpInside)
    }
    
    @objc func checkoutButtonPressed() {
        let vc = CheckoutController()
        navigationController?.pushViewController(vc, animated: false)
    }
    
    override func loadView() {
        view = cartView
    }
}

extension CartController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
