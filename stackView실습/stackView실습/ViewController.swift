//
//  ViewController.swift
//  stackView실습
//
//  Created by 김성민 on 4/10/25.
//

import UIKit

class ViewController: UIViewController {
    let stackView1: UIStackView = {
        let stackView1 = UIStackView()
        stackView1.axis = .vertical
        stackView1.spacing = 10
        stackView1.distribution = .fillEqually
        stackView1.backgroundColor = .white
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        return stackView1
    }()
    
    let stackView2: UIStackView = {
        let stackView2 = UIStackView()
        stackView2.axis = .vertical
        stackView2.spacing = 10
        stackView2.distribution = .fillEqually
        stackView2.backgroundColor = .white
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        return stackView2
    }()
    
    let stackView3: UIStackView = {
        let stackView3 = UIStackView()
        stackView3.axis = .vertical
        stackView3.spacing = 10
        stackView3.distribution = .fillEqually
        stackView3.backgroundColor = .white
        stackView3.translatesAutoresizingMaskIntoConstraints = false
        return stackView3
    }()
    
    let stackView4: UIStackView = {
        let stackView4 = UIStackView()
        stackView4.axis = .vertical
        stackView4.spacing = 10
        stackView4.distribution = .fillEqually
        stackView4.backgroundColor = .white
        stackView4.translatesAutoresizingMaskIntoConstraints = false
        return stackView4
    }()
    
    let button1: UIButton = {
        let button1 = UIButton()
        button1.setTitle("1", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button1.backgroundColor = .white
        button1.layer.cornerRadius = 10
        button1.translatesAutoresizingMaskIntoConstraints = false
        

        return button1
    }()
    
    
    let button4: UIButton = {
        let button4 = UIButton()
        button4.setTitle("4", for: .normal)
        button4.setTitleColor(.black, for: .normal)
        button4.backgroundColor = .white
        button4.layer.cornerRadius = 10
        button4.translatesAutoresizingMaskIntoConstraints = false
        

        return button4
    }()
    
    let button7: UIButton = {
        let button7 = UIButton()
        button7.setTitle("7", for: .normal)
        button7.setTitleColor(.black, for: .normal)
        button7.backgroundColor = .white
        button7.layer.cornerRadius = 10
        button7.translatesAutoresizingMaskIntoConstraints = false
        return button7
    }()
    
    
    let button2: UIButton = {
        let button2 = UIButton()
        button2.setTitle("2", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.backgroundColor = .white
        button2.layer.cornerRadius = 10
        button2.translatesAutoresizingMaskIntoConstraints = false
        return button2
    }()
    
    let button5: UIButton = {
        let button5 = UIButton()
        button5.setTitle("5", for: .normal)
        button5.setTitleColor(.black, for: .normal)
        button5.backgroundColor = .white
        button5.layer.cornerRadius = 10
        button5.translatesAutoresizingMaskIntoConstraints = false
        return button5
    }()
    
    let button8: UIButton = {
        let button8 = UIButton()
        button8.setTitle("8", for: .normal)
        button8.setTitleColor(.black, for: .normal)
        button8.backgroundColor = .white
        button8.layer.cornerRadius = 10
        button8.translatesAutoresizingMaskIntoConstraints = false
        return button8
    }()
    
    
    let button0: UIButton = {
        let button0 = UIButton()
        button0.setTitle("0", for: .normal)
        button0.setTitleColor(.black, for: .normal)
        button0.backgroundColor = .white
        button0.layer.cornerRadius = 10
        button0.translatesAutoresizingMaskIntoConstraints = false
        return button0
    }()
    
    let button3: UIButton = {
        let button3 = UIButton()
        button3.setTitle("3", for: .normal)
        button3.setTitleColor(.black, for: .normal)
        button3.backgroundColor = .white
        button3.layer.cornerRadius = 10
        button3.translatesAutoresizingMaskIntoConstraints = false
        return button3
    }()
    
    let button6: UIButton = {
        let button6 = UIButton()
        button6.setTitle("6", for: .normal)
        button6.setTitleColor(.black, for: .normal)
        button6.backgroundColor = .white
        button6.layer.cornerRadius = 10
        button6.translatesAutoresizingMaskIntoConstraints = false
        return button6
    }()
    
    let button9: UIButton = {
        let button9 = UIButton()
        button9.setTitle("9", for: .normal)
        button9.setTitleColor(.black, for: .normal)
        button9.backgroundColor = .white
        button9.layer.cornerRadius = 10
        button9.translatesAutoresizingMaskIntoConstraints = false
        return button9
    }()
    
    
    let calLabel: UILabel = {
        let calLabel = UILabel()
        calLabel.textAlignment = .center
        calLabel.textColor = .black
        calLabel.backgroundColor = .white
        calLabel.font = UIFont.systemFont(ofSize: 20)
        calLabel.translatesAutoresizingMaskIntoConstraints = false
        return calLabel
    }()
    
    

    //버튼 크기는 70*70 으로하고
    //StackView의 너비는 70 높이는 간격이 있어야 하기에 70*3 + 20   가운데는 70*4 +30 마지막은 70*5 + 40
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttonPlus = makeButton(title: "+")
        let buttonMinus = makeButton(title: "-")
        let buttonMulti = makeButton(title: "*")
        let buttonDiv = makeButton(title: "/")
        let buttonEqual = makeButton(title: "=")
        
        
        button0.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button1.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button2.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button3.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button4.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button5.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button6.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button7.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button8.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button9.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonDiv.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonPlus.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonMinus.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonMulti.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonEqual.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        view.addSubview(calLabel)
        
        view.addSubview(stackView1)
        stackView1.addArrangedSubview(button1)
        stackView1.addArrangedSubview(button4)
        stackView1.addArrangedSubview(button7)
        
        
        view.addSubview(stackView2)
        stackView2.addArrangedSubview(button2)
        stackView2.addArrangedSubview(button5)
        stackView2.addArrangedSubview(button8)
        stackView2.addArrangedSubview(button0)
        
        view.addSubview(stackView3)
        stackView3.addArrangedSubview(button3)
        stackView3.addArrangedSubview(button6)
        stackView3.addArrangedSubview(button9)
        
        view.addSubview(stackView4)
        stackView4.addArrangedSubview(buttonPlus)
        stackView4.addArrangedSubview(buttonMinus)
        stackView4.addArrangedSubview(buttonMulti)
        stackView4.addArrangedSubview(buttonDiv)
        stackView4.addArrangedSubview(buttonEqual)
        
        
        
        
        NSLayoutConstraint.activate([
            stackView1.centerXAnchor.constraint(equalTo: view.leadingAnchor , constant: 70),
            stackView1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            stackView1.heightAnchor.constraint(equalToConstant: 230),
            stackView1.widthAnchor.constraint(equalToConstant: 70),

            stackView2.topAnchor.constraint(equalTo: stackView1.topAnchor),
            stackView2.leadingAnchor.constraint(equalTo: stackView1.trailingAnchor , constant: 10),
            stackView2.heightAnchor.constraint(equalToConstant: 310),
            stackView2.widthAnchor.constraint(equalToConstant: 70),
            
            stackView3.topAnchor.constraint(equalTo: stackView1.topAnchor),
            stackView3.leadingAnchor.constraint(equalTo: stackView2.trailingAnchor ,constant: 10),
            stackView3.heightAnchor.constraint(equalToConstant: 230),
            stackView3.widthAnchor.constraint(equalToConstant: 70),
            
            stackView4.topAnchor.constraint(equalTo: stackView1.topAnchor),
            stackView4.leadingAnchor.constraint(equalTo: stackView3.trailingAnchor ,constant: 10),
            stackView4.heightAnchor.constraint(equalToConstant: 390),
            stackView4.widthAnchor.constraint(equalToConstant: 70),
            
            calLabel.bottomAnchor.constraint(equalTo: stackView1.topAnchor, constant: -10),
            calLabel.trailingAnchor.constraint(equalTo: stackView4.centerXAnchor, constant: 5),
            calLabel.leadingAnchor.constraint(equalTo: stackView1.centerXAnchor),
            calLabel.heightAnchor.constraint(equalToConstant: 70),
            ])
    }
    
    
    
    
    
    
    func makeButton(title: String) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    @objc func buttonTapped(_ sender: UIButton){
        let title = sender.currentTitle ?? ""
        calLabel.text = (calLabel.text ?? "") + title
        if title == "/" {
            calLabel.text = " " + (calLabel.text ?? "") + " "
        }
    }
    


}

