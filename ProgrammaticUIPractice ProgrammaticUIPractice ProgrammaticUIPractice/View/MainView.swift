//
//  MainView.swift
//  ProgrammaticUIPractice ProgrammaticUIPractice ProgrammaticUIPractice
//
//  Created by Diego Estrella III on 1/24/19.
//  Copyright © 2019 Diego Estrella III. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func seguePressed()
}

class MainView: UIView {
    
    weak var delegate: MainViewDelegate?
    
    lazy var myTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .gray
//        textField.delegate = self
        return textField
    }()
    
    lazy var myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Segue", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(seguePressed), for: .touchUpInside)
        return button
    }()
    
    @objc func seguePressed() {
        delegate?.seguePressed()
    }
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(myButton)
        addSubview(myTextField)
        setContstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setContstraints() {
        myButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([myButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                                     myButton.centerYAnchor.constraint(equalTo: centerYAnchor)])
        
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                myTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 300),
                myTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 55),
                myTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -55)])
        
    }
    
}
