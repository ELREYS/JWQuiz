//
//  MultipleChoiceViewController.swift
//  JWQuiz
//
//  Created by Giuseppe DI LISA on 26.07.17.
//  Copyright © 2017 Giuseppe DI LISA. All rights reserved.
//

import UIKit

class MultipleChoiceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }

  

}
