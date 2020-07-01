//
//  ProductCategories.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/6/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CategoryController: UIViewController {
    let categoryView = CategoryView()
    let dataSource = CategoryDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryView.productsCollectionView.dataSource = dataSource
        categoryView.productsCollectionView.delegate = self
        fetchData()
        print("THIS IS THE CATEGORIES \(dataSource.categories.count)")
    }
    
    func fetchData() {
        let url = URL(string: "http://localhost:8080/categories")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "Unknown error")
                return
            }
        
            let decoder = JSONDecoder()
            
            if let categories = try? decoder.decode([Category].self, from: data) {
                DispatchQueue.main.async {
                    self.dataSource.categories = categories
                    self.categoryView.productsCollectionView.reloadData()
                    print("Loaded \(categories.count) categories")
                }
            }
        }.resume()
    }
  
    override func loadView() {
        view = categoryView
    }
}

extension CategoryController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width/2.4, height: UIScreen.main.bounds.height/3.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = ProductsController()
        navigationController?.pushViewController(vc, animated: false)
    }
}
