//
//  TabController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/3/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class TabController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.tabBar.barTintColor = .black
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let tabOne = HomeController()
        let tabOneItem = UITabBarItem(title: "Home", image: UIImage(named: "house"), tag: 0)
        
        let tabTwo = ProductsController()
        let tabTwoItem = UITabBarItem(title: "Shop", image: UIImage(named: "tag"), tag: 1)
        let tabThree = EncouragmentController()
        let tabThreeItem = UITabBarItem(title: "Encouragment", image: UIImage(named: "heart"), tag: 1)
        
        let tabFour = AccountController()
        let tabFourItem = UITabBarItem(title: "Settings", image: UIImage(named: "settings"), tag: 2)
        tabOne.tabBarItem = tabOneItem
        tabTwo.tabBarItem = tabTwoItem
        tabThree.tabBarItem = tabThreeItem
        tabFour.tabBarItem = tabFourItem
        
        self.viewControllers = [tabOne, tabTwo, tabThree, tabFour]
    }
}
