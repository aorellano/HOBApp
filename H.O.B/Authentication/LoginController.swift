//
//  LoginController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/19/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    let loginView = LoginView()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = loginView
    }
}
