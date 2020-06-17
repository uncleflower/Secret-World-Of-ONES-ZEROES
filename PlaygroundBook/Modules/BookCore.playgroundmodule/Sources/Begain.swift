//
//  Page1.swift
//  BookCore
//
//  Created by Jiehao Zhang on 2020/2/23.
//
import PlaygroundSupport
import AVFoundation
import UIKit

class Begain: UIViewController {
    
    let image = UIImageView()
    let newImage = UIImageView()
    let button = UIButton()
    
    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let view = UIView()
        self.view = view
        view.backgroundColor = .white
        
        image.image = UIImage(named: "Study.jpg")
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        image.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        button.addTarget(self, action: #selector(putImage), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isEnabled = true
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
    }
    
    @objc func putImage() {
        play(name: "CLICKED")
        
        UIView.animate(withDuration: 0.3) {
            self.image.alpha = 0
        }
        image.image = UIImage(named: "AsciiPage.png")
        UIView.animate(withDuration: 0.3) {
            self.image.alpha = 1
        }
        print("hello")
    }
    
    func play(name:String) {
        let url = Bundle.main.url(forResource: name, withExtension: "mp3")
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            player.play()
        }catch{
            print(error)
        }
    }
}
