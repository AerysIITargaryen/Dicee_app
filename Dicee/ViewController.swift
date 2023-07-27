//
//  ViewController.swift
//  Dicee
//
//  Created by Иван Станкин on 17.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let imageArray = [UIImage(named: "dice1"),
                      UIImage(named: "dice2"),
                      UIImage(named: "dice3"),
                      UIImage(named: "dice4"),
                      UIImage(named: "dice5"),
                      UIImage(named: "dice6")]
    
    lazy var logoImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "diceeLogo")
        view.contentMode = .scaleAspectFit
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var dice1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "dice1")
        view.contentMode = .scaleAspectFit
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var dice2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "dice2")
        view.contentMode = .scaleAspectFit
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Roll!", for: .normal)
        button.backgroundColor = UIColor(red: 155/255, green: 28/255, blue: 30/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 6
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 71/255, green: 113/255, blue: 72/255, alpha: 1)
        
        dice1.image = imageArray.randomElement()!
        dice2.image = imageArray.randomElement()!
        
        setupViews()
        setConstraints()
        
    }
    
    @objc func buttonTapped() {
        
        dice1.image = imageArray.randomElement()!
        dice2.image = imageArray.randomElement()!
        
    }

    func setupViews() {
        view.addSubview(logoImage)
        view.addSubview(dice1)
        view.addSubview(dice2)
        view.addSubview(button)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.widthAnchor.constraint(equalToConstant: 150),
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            dice1.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -80),
            dice1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dice1.widthAnchor.constraint(equalToConstant: 100),
            
            dice2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 80),
            dice2.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dice2.widthAnchor.constraint(equalToConstant: 100),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            button.widthAnchor.constraint(equalToConstant: 120),
            button.heightAnchor.constraint(equalToConstant: 70)
        ])
        
    }
    

}

