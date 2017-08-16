//
//  MultipleChoiceViewController.swift
//  JWQuiz
//
//  Created by Giuseppe DI LISA on 26.07.17.
//  Copyright © 2017 Giuseppe DI LISA. All rights reserved.
//

import UIKit

class MultipleChoiceViewController: UIViewController {

    private let contentView = UIView()
    private var contentViewConstraints:     [NSLayoutConstraint]!
    
    private let questionView = UIView()
    private var questionViewConstraints:    [NSLayoutConstraint]!
    
    private let answerView = UIView()
    private var answerViewConstraints:      [NSLayoutConstraint]!
    
    private let countdownView = UIView()
    private var countdownViewConstraints:   [NSLayoutConstraint]!
    
    
    private let questionLabel = RoundedLabel()
    private var questionLabelConstraints:   [NSLayoutConstraint]!
    private let questionButton = RoundedButton()
    private var questionButtonConstraints:  [NSLayoutConstraint]!
    
    private var answerButtons = [RoundedButton]()
    private var answerButtonsConstraints:   [NSLayoutConstraint]!
    private let progressView = UIProgressView()
    private var progressViewConstraints:    [NSLayoutConstraint]!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }

  

}
