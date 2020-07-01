//
//  ViewProductController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/25/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class ViewProductController: UIViewController {
    let productView = ViewProductView()
    let imagesDataSource = ImagesDataSource()
    let colorsDataSource = ColorsDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productView.imagesCollectionView.dataSource = imagesDataSource
        productView.colorsCollectionView.dataSource = colorsDataSource
        
        productView.cartButton.addTarget(self, action: #selector(addedToCart), for: .touchUpInside)
    }
    
    @objc func addedToCart() {
        let vc = CartController()
        vc.modalPresentationStyle = .pageSheet
        present(vc, animated: true)
    }
    
    override func loadView() {
        view = productView
    }
}
