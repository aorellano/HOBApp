//
//  ContactController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 7/1/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class ContactController: UIViewController {
    private let contactView = ContactView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        view = contactView
    }
}
