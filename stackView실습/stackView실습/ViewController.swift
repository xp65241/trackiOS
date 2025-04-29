//
//  ViewController.swift
//  stackView실습
//
//  Created by 김성민 on 4/10/25.
//

import UIKit

class ViewController: UIViewController {

    let calLabel: UILabel = {
        let calLabel = UILabel()
        calLabel.textAlignment = .center
        calLabel.textColor = .black
        calLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        calLabel.backgroundColor = .white
        calLabel.translatesAutoresizingMaskIntoConstraints = false
        return calLabel
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.backgroundColor = .white
        stackView.distribution = .fillEqually
        stackView.alignment = .top
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let stackView1: UIStackView = {
        let stackView1 = UIStackView()
        stackView1.axis = .vertical
        stackView1.spacing = 10
        stackView1.alignment = .center
        stackView1.backgroundColor = .white
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        return stackView1
    }()
    let stackView2: UIStackView = {
        let stackView2 = UIStackView()
        stackView2.axis = .vertical
        stackView2.spacing = 10
        stackView2.alignment = .center
        stackView2.backgroundColor = .white
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        return stackView2
    }()
    let stackView3: UIStackView = {
        let stackView3 = UIStackView()
        stackView3.axis = .vertical
        stackView3.spacing = 10
        stackView3.alignment = .center
        stackView3.backgroundColor = .white
        stackView3.translatesAutoresizingMaskIntoConstraints = false
        return stackView3
    }()
    let stackView4: UIStackView = {
        let stackView4 = UIStackView()
        stackView4.axis = .vertical
        stackView4.spacing = 10
        stackView4.alignment = .center
        stackView4.backgroundColor = .white
        stackView4.translatesAutoresizingMaskIntoConstraints = false
        return stackView4
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let button1 = makeButton(title: "1")
        let button2 = makeButton(title: "2")
        let button3 = makeButton(title: "3")
        let button4 = makeButton(title: "4")
        let button5 = makeButton(title: "5")
        let button6 = makeButton(title: "6")
        let button7 = makeButton(title: "7")
        let button8 = makeButton(title: "8")
        let button9 = makeButton(title: "9")
        let button0 = makeButton(title: "0")
        let buttonPlus = makeButton(title: "+")
        let buttonMinus = makeButton(title: "-")
        let buttonMulti = makeButton(title: "*")
        let buttonDiv = makeButton(title: "/")
        let buttonEqual = makeButton(title: "=")
        
        
        let button147 = [button1, button4 , button7]
        let button2580 = [button2, button5, button8, button0]
        let button369 = [button3, button6, button9]
        let buttonCal = [buttonPlus, buttonMinus, buttonMulti, buttonDiv, buttonEqual]
        
        
        buttonTarget(button147, button2580, button369, buttonCal)
        
      
        setUpLayout(group1: button147, group2: button2580, group3: button369, group4: buttonCal)
    }
    
    func makeButton(title: String) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 5
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        return button
    }
    
    
    func setUpLayout(group1: [UIButton] ,group2 :[UIButton] ,group3 :[UIButton] , group4: [UIButton]) {
        view.addSubview(stackView)
        view.addSubview(calLabel)
        
        stackView.addArrangedSubview(stackView1)
        stackView.addArrangedSubview(stackView2)
        stackView.addArrangedSubview(stackView3)
        stackView.addArrangedSubview(stackView4)
        group1.forEach { stackView1.addArrangedSubview($0)}
        group2.forEach { stackView2.addArrangedSubview($0)}
        group3.forEach { stackView3.addArrangedSubview($0)}
        group4.forEach { stackView4.addArrangedSubview($0)}
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor , constant: 50),
            stackView.widthAnchor.constraint(equalToConstant: 350),
            stackView.heightAnchor.constraint(equalToConstant: 500),
        
            calLabel.bottomAnchor.constraint(equalTo: stackView.topAnchor , constant: -10),
            calLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            calLabel.widthAnchor.constraint(equalToConstant: 350),
            calLabel.heightAnchor.constraint(equalToConstant: 50),
            ])
        
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        let title = sender.currentTitle ?? ""
        calLabel.text = (calLabel.text ?? "") + title
    }
    
    func buttonTarget(_ group1: [UIButton] , _ group2: [UIButton] ,_ group3: [UIButton], _ group4: [UIButton]){
        group1.forEach{
            $0.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
        group2.forEach {
            $0.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
        group3.forEach {
            $0.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
        group4.forEach {
            $0.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
    }
    
    
}

