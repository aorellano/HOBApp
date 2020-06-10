//
//  ProductCategories.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/6/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CollectionsController: UIViewController {

    let collectionsView = CollectionsView()
    let dataSource = CollectionsDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionsView.productsCollectionView.dataSource = dataSource
        collectionsView.productsCollectionView.delegate = self


    }
  
    override func loadView() {
        view = collectionsView
    }
}

extension CollectionsController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width/2.4, height: UIScreen.main.bounds.height/3.5)
    }
}
