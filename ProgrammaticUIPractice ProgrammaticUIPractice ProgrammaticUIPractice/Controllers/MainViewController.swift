//
//  MainViewController.swift
//  ProgrammaticUIPractice ProgrammaticUIPractice ProgrammaticUIPractice
//
//  Created by Diego Estrella III on 1/24/19.
//  Copyright © 2019 Diego Estrella III. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let mainView = MainView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.addSubview(mainView)
        mainView.delegate = self
        
    }
    
}

extension MainViewController: MainViewDelegate {
    func seguePressed() {
        let detail = DetailViewController.init(message: "I hate eveything")
        navigationController?.pushViewController(detail, animated: true)
    }
    
}
