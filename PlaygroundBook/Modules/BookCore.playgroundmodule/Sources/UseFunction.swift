//
//  Page3.swift
//  BookCore
//
//  Created by Jiehao Zhang on 2020/2/23.
//

import PlaygroundSupport
import UIKit

let binLabel = UILabel()
let decLabel = UILabel()
let charLabel = UILabel()
let toDecButton = UIButton()
let toCharButton = UIButton()
let binTextField = UITextField()
let decTextField = UITextField()
let charTextField = UITextField()

class UseFunction: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        binLabel.text = "Binary:"
        binLabel.textColor = .white
        binLabel.font = UIFont(name: "Arial", size: 24)
        binLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(binLabel)
        binLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        binLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        
        binTextField.text = "01001001"
        binTextField.font = UIFont(name: "Arial", size: 24)
        binTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(binTextField)
        binTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        binTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        
        toDecButton.translatesAutoresizingMaskIntoConstraints = false
        toDecButton.addTarget(self, action: #selector(toDecbtnTap), for: .touchUpInside)
        toDecButton.backgroundColor = UIColor.gray
        toDecButton.tintColor = UIColor.white
        toDecButton.setTitle("Convert to Denary", for: UIControl.State())
        toDecButton.layer.masksToBounds = true
        toDecButton.layer.cornerRadius = 3
        toDecButton.layer.borderWidth = 3
        toDecButton.layer.borderColor = UIColor.lightGray.cgColor
        view.addSubview(toDecButton)
        toDecButton.topAnchor.constraint(equalTo: binLabel.bottomAnchor, constant: 40).isActive = true
        toDecButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        toDecButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        toDecButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        decLabel.text = "Denary:"
        decLabel.textColor = .white
        decLabel.font = UIFont(name: "Arial", size: 24)
        decLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(decLabel)
        decLabel.topAnchor.constraint(equalTo: toDecButton.bottomAnchor, constant: 120).isActive = true
        decLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        
        decTextField.translatesAutoresizingMaskIntoConstraints = false
        decTextField.font = UIFont(name: "Arial", size: 24)
        view.addSubview(decTextField)
        decTextField.topAnchor.constraint(equalTo: toDecButton.bottomAnchor, constant: 120).isActive = true
        decTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        
        toCharButton.translatesAutoresizingMaskIntoConstraints = false
        toCharButton.addTarget(self, action: #selector(toCharbtnTap), for: .touchUpInside)
        toCharButton.backgroundColor = UIColor.gray
        toCharButton.tintColor = UIColor.white
        toCharButton.setTitle("Convert to letter", for: UIControl.State())
        toCharButton.layer.masksToBounds = true
        toCharButton.layer.cornerRadius = 3
        toCharButton.layer.borderWidth = 3
        toCharButton.layer.borderColor = UIColor.lightGray.cgColor
        view.addSubview(toCharButton)
        toCharButton.topAnchor.constraint(equalTo: decLabel.bottomAnchor, constant: 40).isActive = true
        toCharButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        toCharButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        toCharButton.heightAnchor.constraint(equalToConstant: 40).isActive = true

        
        charLabel.text = "Letter:"
        charLabel.textColor = .white
        charLabel.font = UIFont(name: "Arial", size: 24)
        charLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(charLabel)
        charLabel.topAnchor.constraint(equalTo: toCharButton.bottomAnchor, constant: 120).isActive = true
        charLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        
        charTextField.translatesAutoresizingMaskIntoConstraints = false
        charTextField.font = UIFont(name: "Arial", size: 24)
        view.addSubview(charTextField)
        charTextField.topAnchor.constraint(equalTo: toCharButton.bottomAnchor, constant: 120).isActive = true
        charTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        
        
    }
    
    @objc func toDecbtnTap() {
        var sum = 0
        for c in binTextField.text! {
            sum = sum * 2 + Int("\(c)")!
        }
        decTextField.text = String(sum)
    }
    @objc func toCharbtnTap() {
        let number = Int(decTextField.text!) ?? 65
        print(number)
        let letter = Character(UnicodeScalar(number)!)
        charTextField.text = String(letter)
        print(letter)
    }
    
    
    
    
}
