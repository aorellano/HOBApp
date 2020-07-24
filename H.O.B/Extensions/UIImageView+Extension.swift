//
//  UIImageView+Extension.swift
//  H.O.B
//
//  Created by Alexis Orellano on 7/24/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

extension UIImageView {
    //create a cache to store urls and corresponding images
    static var cache: [URL: UIImage] = [:]
    
    //download image using url
    func downloadImage(url: URL?) {
        let defaultImage = #imageLiteral(resourceName: "jacket1")
        
        //checks if the url works else it sets image to backup default image
        guard let url = url else {
            self.image = defaultImage
            return
        }
        
        //if url works it checks if the img is already in the cach if so it sets that image
        if let cached = UIImageView.cache[url] {
            self.image = cached
            return
        }
        
        //if image is not in the cache it fetchs it
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, response, error in
            if let imageData = data, let img = UIImage(data: imageData) {
                DispatchQueue.main.async {
                    //stores the img in the cache
                    UIImageView.cache[url] = img
                    self?.image = img
                    return
                }
            } else {
                DispatchQueue.main.async {
                    //if the fetch fails it sets default image as the image
                    self?.image = defaultImage
                }
            }
        }
        task.resume()
    }
}
