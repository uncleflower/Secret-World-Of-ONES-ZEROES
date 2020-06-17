//
//  Page2.swift
//  BookCore
//
//  Created by Jiehao Zhang on 2020/2/23.
//
import PlaygroundSupport
import UIKit

class Secret: UIViewController {
    
    let image = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: "find.jpg")
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        image.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
