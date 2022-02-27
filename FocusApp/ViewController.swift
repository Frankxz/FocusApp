//
//  ViewController.swift
//  FocusApp
//
//  Created by Robert Miller on 23.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var welcomeLabel = UILabel()
    var welcomeButton = UIButton(type: .system)
    var textLabel = UILabel()
    var circleView = UIView()
    var timerButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        welcomeButton.addTarget(self, action: #selector(welcomeButtonTouched), for: .touchUpInside)
        
    }
    @objc func welcomeButtonTouched(){
        print("hello")
    }
    
    func setUI(){
        view.backgroundColor = .white
        
        view.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.text = "Start to work with more productivity with us ! We will teach you time management 🤫"
        welcomeLabel.numberOfLines = 0
        welcomeLabel.textAlignment = .center
        
        welcomeLabel.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 25)
        welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel.widthAnchor.constraint(equalToConstant: view.frame.width / 1.5).isActive = true
        
        view.addSubview(welcomeButton)
        welcomeButton.translatesAutoresizingMaskIntoConstraints = false
        welcomeButton.setTitle("Start improve your time spending", for: .normal)
        welcomeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40).isActive = true
        
    }
    
}

