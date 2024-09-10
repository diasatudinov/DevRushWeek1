//
//  ViewController.swift
//  I Am Rich
//
//  Created by Dias Atudinov on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {

    
    private var imageView: UIImageView = {
       let view = UIImageView()
        view.layer.masksToBounds = true
        return view
    }()
    
    private var labelView: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 50, weight: .bold)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
        setupView()
        configure()
    }

    private func setupView() {
        view.addSubview(imageView)
        view.addSubview(labelView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        labelView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            labelView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelView.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: -50)
        ])
        
        
        
        
        
    }
    
    private func configure() {
        imageView.image = UIImage(named: "diamond")
        
        labelView.text = "I am Poor"
    }

}

