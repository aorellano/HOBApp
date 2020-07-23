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
        
        let url = URL(string: "http://127.0.0.1:8000/product-list/")!
        
        let task = URLSession.shared.dataTask(with: url){(data, response, err) in
            print("hi")
            guard let data = data else { return }
            let decoder = JSONDecoder()
            
            do {
                let product = try decoder.decode([Product].self, from: data)
                self.dataSource.update(with: product)
                DispatchQueue.main.async {
                    self.productsView.collectionView.reloadData()
                }
                
            } catch {
                print(error.localizedDescription)
            }
            
        }
            
        task.resume()
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
