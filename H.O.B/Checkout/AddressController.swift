//
//  AddressController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 7/6/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class AddressController: UIViewController {
    let addressView = AddressView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func loadView() {
        view = addressView
    }
}



