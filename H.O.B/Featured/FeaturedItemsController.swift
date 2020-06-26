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
    @objc func buyButtonPressed() {
        let vc = BuyController()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func loadView() {
        view = featuredItemsView
        
    }
    
}

extension FeaturedItemsController: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
       
         let vc = BuyController()
               navigationController?.pushViewController(vc, animated: true)
    }
        
        
}

extension FeaturedItemsController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        featuredItemsView.collectionView.scrollToNearestVisibleCollectionViewCell()
    }

    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if !decelerate {
            featuredItemsView.collectionView.scrollToNearestVisibleCollectionViewCell()
        }
    }
}


