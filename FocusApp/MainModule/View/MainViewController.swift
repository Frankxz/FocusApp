//
//  ViewController.swift
//  FocusApp
//
//  Created by Robert Miller on 23.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var welcomeLabel = UILabel()
    var welcomeButton = UIButton(type: .system)
    
    var presenter: MainViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setWelcomeLabel()
        setWelcomeButton()
        
    }
    
    @objc func welcomeButtonTouched(){
        presenter.showGreeting()
    }
    
    func setWelcomeLabel(){
        view.backgroundColor = .white
        view.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.textAlignment = .center
        welcomeLabel.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 25)
        welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel.widthAnchor.constraint(equalToConstant: view.frame.width / 1.5).isActive = true
    }
    
    func setWelcomeButton() {
        view.addSubview(welcomeButton)
        welcomeButton.translatesAutoresizingMaskIntoConstraints = false
        welcomeButton.setTitle("Check", for: .normal)
        welcomeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300).isActive = true
        welcomeButton.addTarget(self, action: #selector(welcomeButtonTouched), for: .touchUpInside)
    }
    
}

extension MainViewController: MainViewProtocol {
    func setGreeting(greeting: String) {
        welcomeLabel.text = greeting
    }
}
