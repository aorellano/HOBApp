//
//  HeaderController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/5/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class HeaderController: UIViewController {
    let headerView = HeaderView()
    var line1StartingConstraint: NSLayoutConstraint!
    var line1FinishedConstraint: NSLayoutConstraint!
    
    var line2StartingConstraint: NSLayoutConstraint!
    var line2FinishedConstraint: NSLayoutConstraint!
    
    var line3StartingConstraint: NSLayoutConstraint!
    var line3FinishedConstraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        line1StartingConstraint = headerView.line1.trailingAnchor.constraint(equalTo: view.leadingAnchor)
        line1StartingConstraint?.isActive = true
        
        line2StartingConstraint = headerView.line2.trailingAnchor.constraint(equalTo: view.leadingAnchor)
        line2StartingConstraint?.isActive = true
        
        line3StartingConstraint = headerView.line3.trailingAnchor.constraint(equalTo: view.leadingAnchor)
        line3StartingConstraint?.isActive = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.7, delay: 0.0, options: .curveEaseInOut, animations: { [weak self] in
            self?.line1StartingConstraint.isActive = false
            self?.line1FinishedConstraint = self?.headerView.line1.centerXAnchor.constraint(equalTo: (self?.view.centerXAnchor) as! NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: -75)
            self?.line1FinishedConstraint.isActive = true
            self?.view.layoutIfNeeded()
        })
        
        UIView.animate(withDuration: 0.8, delay: 0.5, options: .curveEaseInOut, animations: { [weak self] in
            self?.line2StartingConstraint.isActive = false
            self?.line2FinishedConstraint = self?.headerView.line2.centerXAnchor.constraint(equalTo: (self?.view.centerXAnchor) as! NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: -0)
            self?.line2FinishedConstraint.isActive = true
            self?.view.layoutIfNeeded()
        })
        
        UIView.animate(withDuration: 0.99, delay: 0.99, options: .curveEaseInOut, animations: { [weak self] in
            self?.line3StartingConstraint.isActive = false
            self?.line3FinishedConstraint = self?.headerView.line3.centerXAnchor.constraint(equalTo: (self?.view.centerXAnchor) as! NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: 85)
            self?.line3FinishedConstraint.isActive = true
            self?.view.layoutIfNeeded()
        })
    }

    override func loadView() {
        view = headerView
    }
    

    
}
    

