//
//  ViewController.swift
//  Magic 8
//
//  Created by Dias Atudinov on 13.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]

    private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "ball1")
        return imageView
    }()

    private var buttonView: UIButton = {
       let button = UIButton()
        button.backgroundColor = .red
        button.layer.cornerRadius = 12.0
        button.setTitle("ASK", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        setup()
    }
    
    @objc func buttonTapped() {
        
        var randomNum = Int.random(in: 1...ballArray.count)
        
        imageView.image = UIImage(named: "ball\(randomNum)")
        
    }
    private func setup() {
        
        view.addSubview(imageView)
        view.addSubview(buttonView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            buttonView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            buttonView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonView.widthAnchor.constraint(equalToConstant: 75),
            buttonView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
    }

}


