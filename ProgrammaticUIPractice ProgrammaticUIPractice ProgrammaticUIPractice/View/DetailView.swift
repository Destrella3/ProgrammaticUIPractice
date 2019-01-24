//
//  DetailView.swift
//  ProgrammaticUIPractice ProgrammaticUIPractice ProgrammaticUIPractice
//
//  Created by Diego Estrella III on 1/24/19.
//  Copyright © 2019 Diego Estrella III. All rights reserved.
//

import UIKit

class DetailView: UIView {

    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(myLabel)
        setConstraints()
        backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11),
            myLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
            myLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11)
            ])
    }
}
