//
//  CheckoutController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/25/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CheckoutController: StackController {
    let checkoutView = CheckoutView()

    var slides = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        add(AddressController())
    }
    
    override func loadView() {
        view = checkoutView
    }
    
//    func createSlides() -> [UIView] {
//        let slide1 = AddressView()
//
//        return [slide1]
//    }
//
//    func setupSlideScrollVieew(slides: [UIView]) {
//        checkoutView.scrollView.isPagingEnabled = true
//        slides[0].frame = CGRect(x: 0, y:0, width: view.frame.width, height: view.frame.height)
//        checkoutView.scrollView.addSubview(slides[0])
//    }
//
//    func setupPageControl() {
//        view.addSubview(pageControl)
//           
//           pageControl.numberOfPages = 4
//           pageControl.backgroundColor = .blue
//           pageControl.heightAnchor.constraint(equalToConstant: 50).isActive = true
//           pageControl.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
//           pageControl.translatesAutoresizingMaskIntoConstraints = false
//        pageControl.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 80).isActive = true
//        pageControl.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
//    }    
}
