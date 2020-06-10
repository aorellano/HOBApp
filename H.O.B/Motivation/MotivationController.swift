//
//  MotivationController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/9/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//
import UIKit

class MotivationController: UIViewController {
    let motivationView = MotivationView()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = motivationView
    }
}

