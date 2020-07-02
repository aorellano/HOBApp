//
//  ContactView.swift
//  
//
//  Created by Alexis Orellano on 7/1/20.
//

import UIKit

class ContactView: UIView {
    private let imageContainer: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor.backgroundColor
        container.clipsToBounds = true
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()

    private let productImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "blackwhite")
        imageView.layer.masksToBounds = true
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let formContainer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let formTitle: UILabel = {
        let label = UILabel()
        label.text = "GET IN TOUCH"
        label.font = UIFont.secondaryFont
        label.backgroundColor = .black
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Name"
        textField.backgroundColor = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
        textField.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray.withAlphaComponent(0.15)])
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let nameSeperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray.withAlphaComponent(0.15)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.backgroundColor = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
        textField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray.withAlphaComponent(0.15)])
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let emailSeperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray.withAlphaComponent(0.15)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let messageTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Message"
        textField.backgroundColor = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
        textField.attributedPlaceholder = NSAttributedString(string: "Message", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray.withAlphaComponent(0.15)])
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let sendButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 35
        button.setTitle("Send", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.backgroundColor
        setupImageContainer()
        setupFormContainer()
        setupFormSheet()
        setupButton()
    }
    
    func setupImageContainer() {
        addSubview(imageContainer)
        imageContainer.addSubview(productImage)
        
        imageContainer.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageContainer.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageContainer.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageContainer.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4).isActive = true
        
        productImage.leadingAnchor.constraint(equalTo: imageContainer.leadingAnchor).isActive = true
        productImage.trailingAnchor.constraint(equalTo: imageContainer.trailingAnchor).isActive = true
        productImage.topAnchor.constraint(equalTo: imageContainer.topAnchor).isActive = true
        productImage.bottomAnchor.constraint(equalTo: imageContainer.bottomAnchor).isActive = true
    }
    
    func setupFormContainer() {
        addSubview(formContainer)
        
        formContainer.topAnchor.constraint(equalTo: imageContainer.bottomAnchor, constant: 40).isActive = true
        formContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        formContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        formContainer.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/2).isActive = true
    }
    
    func setupFormSheet() {
        formContainer.addSubview(formTitle)
        formContainer.addSubview(nameTextField)
        formContainer.addSubview(nameSeperatorView)
        formContainer.addSubview(emailTextField)
        formContainer.addSubview(emailSeperatorView)
        formContainer.addSubview(messageTextField)
        
        formTitle.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        formTitle.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        formTitle.topAnchor.constraint(equalTo: formContainer.topAnchor).isActive = true
        //formTitle.centerXAnchor.constraint(equalTo: formContainer.centerXAnchor).isActive = true
      
        formTitle.heightAnchor.constraint(equalTo: formContainer.heightAnchor, multiplier: 1/4).isActive = true
        
        nameTextField.topAnchor.constraint(equalTo: formTitle.bottomAnchor).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: formContainer.leadingAnchor, constant: 10).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: formContainer.trailingAnchor, constant: -10).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: formContainer.heightAnchor, multiplier: 1/8).isActive = true
        
        nameSeperatorView.leadingAnchor.constraint(equalTo: formContainer.leadingAnchor).isActive = true
        nameSeperatorView.bottomAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameSeperatorView.widthAnchor.constraint(equalTo: formContainer.widthAnchor).isActive = true
        nameSeperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: formContainer.leadingAnchor, constant: 10).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: formContainer.trailingAnchor, constant: -10).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: formContainer.heightAnchor, multiplier: 1/8).isActive = true
        
        emailSeperatorView.leadingAnchor.constraint(equalTo: formContainer.leadingAnchor).isActive = true
        emailSeperatorView.bottomAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeperatorView.widthAnchor.constraint(equalTo: formContainer.widthAnchor).isActive = true
        emailSeperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        messageTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        messageTextField.leadingAnchor.constraint(equalTo: formContainer.leadingAnchor, constant: 10).isActive = true
        messageTextField.trailingAnchor.constraint(equalTo: formContainer.trailingAnchor, constant: -10).isActive = true
        messageTextField.heightAnchor.constraint(equalTo: formContainer.heightAnchor, multiplier: 1/2).isActive = true
    }
    
    func setupButton() {
        addSubview(sendButton)
        
        sendButton.centerYAnchor.constraint(equalTo: messageTextField.bottomAnchor).isActive = true
        sendButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        sendButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
        sendButton.centerXAnchor.constraint(equalTo: messageTextField.centerXAnchor).isActive = true
        //sendButton.trailingAnchor.constraint(equalTo: formContainer.trailingAnchor).isActive = true
//        sendButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive =  true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
