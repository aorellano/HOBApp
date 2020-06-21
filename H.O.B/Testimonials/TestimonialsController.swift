//
//  MotivationController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/9/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//
import UIKit

class TestimonialsController: UIViewController {
    let motivationView = TestimonialsView()
    let dataSource = TestDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        motivationView.collectionView.delegate = self
        motivationView.collectionView.dataSource = dataSource
    }
    
    override func loadView() {
        view = motivationView
    }
}

extension TestimonialsController:  UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
       return CGSize(width: (UIScreen.main.bounds.width/1.1), height: (UIScreen.main.bounds.height/1.6))
        //return CGSize(width: (collectionView.bounds.width/2.1), height: 300)
    }
}
