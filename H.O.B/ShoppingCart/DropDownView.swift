//
//  DropDownView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/24/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class DropDownView: UIView {
    
    var dropDownOptions  = ["Priority Mail - $11.90", "Priority Mail Express - $43.75", "Store Pickup", "Potassium"]
    var tableView = UITableView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
        

        
        tableViewSetup()
    }
    
    func tableViewSetup() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorColor = .white
        self.addSubview(tableView)
        
        tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension DropDownView: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dropDownOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = dropDownOptions[indexPath.row]
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 12)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(dropDownOptions[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 35.0
    }
}

