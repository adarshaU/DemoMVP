//
//  ViewController.swift
//  MVPDesignPattern
//
//  Created by Adarsha Upadhya on 28/12/18.
//  Copyright © 2018 Adarsha Upadhya. All rights reserved.
//

import UIKit

class GameViewController: UIViewController,GreetingView {
    
    var presenter: GreetingViewPresenter!
    
    let showGreetingButton:UIButton = {
        let button = UIButton(frame: CGRect(x: 10, y: 100, width: 50, height: 50))
        button.setTitle("Check", for: .normal)
        button.backgroundColor = UIColor.red
        return button
    }()
    
    let greetingLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.showGreetingButton.addTarget(self, action: #selector(didTapButton(button:)), for: .touchUpInside)
        self.view.addSubview(self.showGreetingButton)
        self.view.addSubview(greetingLabel)
    }
    
   @objc func didTapButton(button: UIButton) {
        self.presenter.showGreeting()
    }
    
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
        print("You got it set greeting")
    }

}

