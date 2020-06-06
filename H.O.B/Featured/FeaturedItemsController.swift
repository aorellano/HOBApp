//
//  FeaturedItemsController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/5/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class FeaturedItemsController: UIViewController {
    let featuredItemsView = FeaturedItemsView()
    let dataSource = FeaturedItemsDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        featuredItemsView.collectionView.delegate = self
        featuredItemsView.collectionView.dataSource = dataSource
    }
    override func loadView() {
        view = featuredItemsView
        
    }
    
}

extension FeaturedItemsController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (UIScreen.main.bounds.width/1.1), height: (UIScreen.main.bounds.height/1.6))
         //return CGSize(width: (collectionView.bounds.width/2.1), height: 300)
    }
    
}
