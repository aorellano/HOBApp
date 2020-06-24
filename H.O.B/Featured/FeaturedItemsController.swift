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
        var scrollView = featuredItemsView.collectionView
    }
    override func loadView() {
        view = featuredItemsView
        
    }
    
}

extension FeaturedItemsController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        return CGSize(width: (UIScreen.main.bounds.width/1.1), height: (UIScreen.main.bounds.height/1.6))
//    }
}

extension FeaturedItemsController: UIScrollViewDelegate {
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        let layout = featuredItemsView.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left)/cellWidthIncludingSpacing
        let roundedIndex = round(index)
        
        offset = CGPoint(x: roundedIndex * cellWidthIncludingSpacing - scrollView.contentInset.left, y: scrollView.contentInset.top)
        
        targetContentOffset.pointee = offset
    }
}

