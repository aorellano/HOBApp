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
        let tabTwo = EncouragmentController()
        let tabTwoItem = UITabBarItem(title: "Encouragment", image: UIImage(named: "heart"), tag: 1)
        let tabThree = AccountController()
        let tabThreeItem = UITabBarItem(title: "Account", image: UIImage(named: "account"), tag: 2)
        tabOne.tabBarItem = tabOneItem
        tabTwo.tabBarItem = tabTwoItem
        tabThree.tabBarItem = tabThreeItem
        
        self.viewControllers = [tabOne, tabTwo, tabThree]
    }
}
