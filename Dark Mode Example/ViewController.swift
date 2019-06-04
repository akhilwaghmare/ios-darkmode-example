//
//  ViewController.swift
//  Dark Mode Example
//
//  Created by Akhil Waghmare on 6/3/19.
//  Copyright © 2019 Akhil Waghmare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label1: UILabel = {
        let label = UILabel()
        label.text = "I use UI Element Colors"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.cornerRadius = 4.0
        label.textColor = .label
        label.backgroundColor = .secondarySystemBackground
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.text = "I use Adaptable Colors"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.cornerRadius = 4.0
        label.textColor = .systemOrange
        label.backgroundColor = .systemBrown
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label3: UILabel = {
        let label = UILabel()
        label.text = "I use Color Assets"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.cornerRadius = 4.0
        label.textColor = UIColor(named: "customTextColor")
        label.backgroundColor = UIColor(named: "customBackgroundColor")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 12.0
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "iOS 13 Dark Mode"
        view.backgroundColor = .systemBackground
        setupViews()
    }
    
    
    
    private func setupViews() {
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        view.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, constant: -32).isActive = true
        
    }


}

