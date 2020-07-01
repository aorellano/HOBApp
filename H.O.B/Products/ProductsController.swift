//
//  ProductsController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/30/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class ProductsController: UIViewController {
    let productsView = ProductsView()
    let dataSource = ProductsDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsView.collectionView.dataSource = dataSource
        productsView.collectionView.delegate = self
    }
    
    override func loadView() {
        view = productsView
    }
}

extension ProductsController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
            return CGSize(width: collectionView.frame.width, height: 80)
    }
}
