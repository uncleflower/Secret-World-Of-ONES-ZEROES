//
//  AsciiTable.swift
//  BookCore
//
//  Created by Jiehao Zhang on 2020/2/25.
//

import UIKit
import PlaygroundSupport

class AsciiTable: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        self.view = view
        view.backgroundColor = .white
           
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "webPage.png")
        self.view.addSubview(image)
        let stringH = "H:|-0-[image]-0-|"
        let stringV = "V:|-0-[image]-0-|"
        let constraitArrayH = NSLayoutConstraint.constraints(withVisualFormat: stringH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["image":image])
        let constraitArrayV = NSLayoutConstraint.constraints(withVisualFormat: stringV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["image":image])
        view.addConstraints(constraitArrayH)
        view.addConstraints(constraitArrayV)
        
        let asciiLabelRect = CGRect(x: 40, y: 120, width: 250, height: 20)
        let asciiLabel = UILabel(frame: asciiLabelRect)
        asciiLabel.text = "ASCII Table and Description"
        asciiLabel.textColor = .black
        asciiLabel.font = UIFont(name: "Thin", size: 25)
        view.addSubview(asciiLabel)
        
        let textContain = UITextView()
        textContain.translatesAutoresizingMaskIntoConstraints = false
        textContain.layer.cornerRadius = 5
        textContain.layer.borderColor = UIColor.black.cgColor
        textContain.layer.borderWidth = 1
        textContain.backgroundColor = .white
        textContain.textColor = .black
        textContain.text =
        """
        The full name of ASCII is American Standard Code for Information Interchange.
        The current ASCII Code mainly uses 8-bit binary numbers to represent 256 possible characters
        For example, the ASCII code for uppercase M is 77.
        Most computers use ASCII codes to represent text, which makes it possible to transfer data from one computer to another.
        """
        textContain.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        view.addSubview(textContain)
        textContain.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        textContain.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        textContain.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        textContain.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        let asciiTable = UIImageView()
        asciiTable.translatesAutoresizingMaskIntoConstraints = false
        asciiTable.image = UIImage(named: "asciiTable.png")
        self.view.addSubview(asciiTable)
        asciiTable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        asciiTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        asciiTable.topAnchor.constraint(equalTo: textContain.bottomAnchor, constant: 20).isActive = true
        asciiTable.heightAnchor.constraint(equalToConstant: 350).isActive = true
    }
}
