//
//  ByPen.swift
//  BookCore
//
//  Created by Jiehao Zhang on 2020/2/25.
//

import UIKit
import PlaygroundSupport

public class ByPen:UIViewController {
    let binImage = UIImageView()
    let numberImage = UIImageView()
    let animationButton = UIButton()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        binImage.image = UIImage(named: "writeDown.png")
        binImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(binImage)
        binImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        binImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        binImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        binImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        animationButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationButton)
        animationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        animationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40).isActive = true
        animationButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 135).isActive = true
        animationButton.heightAnchor.constraint(equalToConstant: 123).isActive = true
        animationButton.backgroundColor = .white
        animationButton.addTarget(self, action: #selector(changeImage), for: .touchDown)
        
        numberImage.image = UIImage(named: "getFirstNumber.png")
        numberImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(numberImage)
        numberImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        numberImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        numberImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        numberImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        numberImage.alpha = 0
        
        
        buttonAnimation()
        
    }
    
    @objc func changeImage() {
        UIView.animate(withDuration: 0.5) {
            self.binImage.alpha = 0
            self.numberImage.alpha = 1
        }
    }
    
    func delay(seconds: Double, completion: @escaping ()-> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
    }
    
    func buttonAnimation() {
        if animationButton.alpha == 0 {
            UIView.animate(
                withDuration: 0.3,
                animations: {
                    self.animationButton.alpha = 1
            })
        } else {
            UIView.animate(
            withDuration: 0.3) {
                self.animationButton.alpha = 0
            }
        }
        
        
        delay(seconds: 0.5) {
            self.buttonAnimation()
        }
    }
}
