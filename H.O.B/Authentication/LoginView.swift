//
//  LoginView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/19/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class LoginView: UIView {
    let inputContainerView = LoginInputContainerView()
     var inputContainerViewHeightAnchor: NSLayoutConstraint?
       let headerLabel: UILabel = {
           let label = UILabel()
           label.text = "Login"
           label.textColor = UIColor.white
           label.font = UIFont.secondaryFont
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
       
       let loginRegisterSegmentedControl: UISegmentedControl = {
           let segmentedControl = UISegmentedControl(items: ["Login", "Sign Up"])
           segmentedControl.backgroundColor = UIColor.darkGray
           segmentedControl.addTarget(self, action: #selector(handleLoginRegisterChange), for: .valueChanged)
           segmentedControl.translatesAutoresizingMaskIntoConstraints = false
           return segmentedControl
       }()
       
       
       
       lazy var loginRegisterButton: UIButton = {
           let button = UIButton()
           button.backgroundColor = UIColor.purple
           button.setTitle("Register", for: .normal)
           button.layer.cornerRadius = 10
           button.layer.masksToBounds = true
           button.translatesAutoresizingMaskIntoConstraints = false

           return button
       }()
       
       override init(frame: CGRect) {
           super.init(frame: frame)
           
           backgroundColor = UIColor.backgroundColor
           
           setupHeaderLabel()
           setupInputsContainerView()
           setupLoginSegmentedControl()
           setupLoginRegisterButton()
       }
       
       func setupHeaderLabel() {
           addSubview(headerLabel)
              
           headerLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
           headerLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
          }
       
       func setupInputsContainerView() {
           addSubview(inputContainerView)
           inputContainerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
           inputContainerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
           inputContainerView.widthAnchor.constraint(equalTo: self.safeAreaLayoutGuide.widthAnchor, constant: -24).isActive = true
           
           inputContainerViewHeightAnchor = inputContainerView.heightAnchor.constraint(equalToConstant: 180)
                  
           inputContainerViewHeightAnchor?.isActive = true
       }
       
       func setupLoginSegmentedControl() {
           addSubview(loginRegisterSegmentedControl)
              
           loginRegisterSegmentedControl.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
           loginRegisterSegmentedControl.bottomAnchor.constraint(equalTo: inputContainerView.topAnchor, constant: -20).isActive = true
           loginRegisterSegmentedControl.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
           loginRegisterSegmentedControl.heightAnchor.constraint(equalToConstant: 50).isActive = true
          }
       
       func setupLoginRegisterButton() {
           addSubview(loginRegisterButton)
           loginRegisterButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
           loginRegisterButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 20).isActive = true
           loginRegisterButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
           loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
       }
       
       @objc func handleLoginRegisterChange() {
           let title = loginRegisterSegmentedControl.titleForSegment(at: (loginRegisterSegmentedControl.selectedSegmentIndex))
           loginRegisterButton.setTitle(title, for: .normal)
           headerLabel.text = title

           inputContainerViewHeightAnchor?.constant = loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 120 : 180

           inputContainerView.nameTextFieldHeightAnchor?.isActive = false
           inputContainerView.nameTextFieldHeightAnchor = inputContainerView.nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 0 : 1/3)
           inputContainerView.nameTextFieldHeightAnchor?.isActive = true

           inputContainerView.emailTextFieldHeightAnchor?.isActive = false
           inputContainerView.emailTextFieldHeightAnchor = inputContainerView.emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 1/2 : 1/3)

           inputContainerView.emailTextFieldHeightAnchor?.isActive = true

           inputContainerView.passwordTextFieldHeightAnchor?.isActive = false
           inputContainerView.passwordTextFieldHeightAnchor = inputContainerView.passwordTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 1/2 : 1/3)

           inputContainerView.passwordTextFieldHeightAnchor?.isActive = true
       }
       
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
