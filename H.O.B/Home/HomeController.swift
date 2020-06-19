//
//  ViewController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/3/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class HomeController: StackController {
    let homeView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        add(HeaderController())
        add(FeaturedItemsController())
        add(CategoryController())
        add(WorkoutsController())
        add(MotivationController())
    }
    
    override func loadView() {
        view = homeView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
}


