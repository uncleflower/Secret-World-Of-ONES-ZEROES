//
//  ChageColor.swift
//  BookCore
//
//  Created by Jiehao Zhang on 2020/2/23.
//

import PlaygroundSupport
import AVFoundation
import UIKit

public class Calculate: UIViewController{
    
    var textView: UITextView!
    var asciiView: UITextView!
    let apple = 216
    let world = 296
    let Siri = 72
    var player:AVAudioPlayer!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        self.view = view
        view.backgroundColor = .gray
        
//        let sentenceRect = CGRect(x: 40, y: 20, width: 200, height: 20)
        let sentenceLabel = UILabel()
        sentenceLabel.translatesAutoresizingMaskIntoConstraints = false
        sentenceLabel.text = "Ascii"
        sentenceLabel.textColor = .white
        sentenceLabel.font = UIFont(name: "Arial", size: 24)
        view.addSubview(sentenceLabel)
        let sentenceLabelH = "H:|-40-[sentenceLabel(200)]"
        let sentenceLabelV = "V:|-80-[sentenceLabel(20)]"
        let sentenceLabelConstraintH = NSLayoutConstraint.constraints(withVisualFormat: sentenceLabelH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["sentenceLabel":sentenceLabel])
        let sentenceLabelConstraintV = NSLayoutConstraint.constraints(withVisualFormat: sentenceLabelV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["sentenceLabel":sentenceLabel])
        view.addConstraints(sentenceLabelConstraintH)
        view.addConstraints(sentenceLabelConstraintV)
        
        

//        let textViewRect = CGRect(x: 40, y: 50, width: 295, height: 260)
        textView = UITextView()
        textView.text = "010010010010000001100001011011000111001001100101011000010110010001111001001000000110001101101111011011100111010001110010011011110110110000100000011101000110100001100101001000000100000101110000011100000110110001100101"
        textView.font = UIFont(name: "Arial", size: 24)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.layer.cornerRadius = 5
        view.addSubview(textView)
        let textViewH = "H:|-40-[textView]-40-|"
        let textViewV = "V:|-130-[textView(300)]"
        let textViewConstraintH = NSLayoutConstraint.constraints(withVisualFormat: textViewH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["textView":textView!])
        let textViewConstraintV = NSLayoutConstraint.constraints(withVisualFormat: textViewV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["textView":textView!])
        view.addConstraints(textViewConstraintH)
        view.addConstraints(textViewConstraintV)

//        let asciiLabelRect = CGRect(x: 40, y: 350, width: 200, height: 20)
        let asciiLabel = UILabel()
        asciiLabel.translatesAutoresizingMaskIntoConstraints = false
        asciiLabel.text = "Text"
        asciiLabel.textColor = .white
        asciiLabel.font = UIFont(name: "Arial", size: 24)
        view.addSubview(asciiLabel)
        let asciiLabelH = "H:|-40-[asciiLabel(200)]"
        let asciiLabelV = "V:|-460-[asciiLabel(20)]"
        let asciiLabelConstraintH = NSLayoutConstraint.constraints(withVisualFormat: asciiLabelH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["asciiLabel":asciiLabel])
        let asciiLabelConstraintV = NSLayoutConstraint.constraints(withVisualFormat: asciiLabelV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["asciiLabel":asciiLabel])
        view.addConstraints(asciiLabelConstraintH)
        view.addConstraints(asciiLabelConstraintV)
        
//        let asciiViewRect = CGRect(x: 40, y: 380, width: 295, height: 260)
        asciiView = UITextView()
        asciiView.font = UIFont(name: "Arial", size: 24)
        asciiView.translatesAutoresizingMaskIntoConstraints = false
        asciiView.layer.cornerRadius = 5
        view.addSubview(asciiView)
        let asciiViewH = "H:|-40-[asciiView]-40-|"
        let asciiViewV = "V:|-510-[asciiView(300)]"
        let asciiViewConstraintH = NSLayoutConstraint.constraints(withVisualFormat: asciiViewH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["asciiView":asciiView!])
        let asciiViewConstraintV = NSLayoutConstraint.constraints(withVisualFormat: asciiViewV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["asciiView":asciiView!])
        view.addConstraints(asciiViewConstraintH)
        view.addConstraints(asciiViewConstraintV)
        
        
//        let toAsciiBtnRect = CGRect(x: 230, y: 15, width: 100, height: 30)
        let toAsciiButton = UIButton()
        toAsciiButton.translatesAutoresizingMaskIntoConstraints = false
        toAsciiButton.addTarget(self, action: #selector(toTextbtnTap(_:)), for: .touchUpInside)
        toAsciiButton.backgroundColor = UIColor.gray
        toAsciiButton.tintColor = UIColor.white
        toAsciiButton.setTitle("toText", for: UIControl.State())
        toAsciiButton.titleLabel!.font = UIFont(name: "Arial", size: 24)
        toAsciiButton.layer.masksToBounds = true
        toAsciiButton.layer.cornerRadius = 3
        toAsciiButton.layer.borderWidth = 3
        toAsciiButton.layer.borderColor = UIColor.lightGray.cgColor
        view.addSubview(toAsciiButton)
        let toAsciiButtonH = "H:[toAsciiButton(100)]-40-|"
        let toAsciiButtonV = "V:|-75-[toAsciiButton(30)]"
        let toAsciiButtonConstraintH = NSLayoutConstraint.constraints(withVisualFormat: toAsciiButtonH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["toAsciiButton":toAsciiButton])
        let toAsciiButtonConstraintV = NSLayoutConstraint.constraints(withVisualFormat: toAsciiButtonV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["toAsciiButton":toAsciiButton])
        view.addConstraints(toAsciiButtonConstraintH)
        view.addConstraints(toAsciiButtonConstraintV)
        
//        let toTextBtnRect = CGRect(x: 230, y: 345, width: 100, height: 30)
        let toTextButton = UIButton()
        toTextButton.translatesAutoresizingMaskIntoConstraints = false
        toTextButton.addTarget(self, action: #selector(toAsciibtnTap(_:)), for: .touchUpInside)
        toTextButton.backgroundColor = UIColor.gray
        toTextButton.tintColor = UIColor.white
        toTextButton.setTitle("toAscii", for: UIControl.State())
        toTextButton.titleLabel!.font = UIFont(name: "Arial", size: 24)
        toTextButton.layer.cornerRadius = 3
        toTextButton.layer.borderWidth = 3
        toTextButton.layer.borderColor = UIColor.lightGray.cgColor
        view.addSubview(toTextButton)
        let toTextButtonH = "H:[toTextButton(100)]-40-|"
        let toTextButtonV = "V:|-455-[toTextButton(30)]"
        let toTextButtonConstraintH = NSLayoutConstraint.constraints(withVisualFormat: toTextButtonH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["toTextButton":toTextButton])
        let toTextButtonConstraintV = NSLayoutConstraint.constraints(withVisualFormat: toTextButtonV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["toTextButton":toTextButton])
        view.addConstraints(toTextButtonConstraintH)
        view.addConstraints(toTextButtonConstraintV)
        
        
        
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
    
    @objc func toAsciibtnTap(_ button:UIButton) {
        if let text = asciiView.text {
            textView.text = sentenceToAscii(text)
        }
    }
    @objc private func toTextbtnTap(_ button:UIButton) {
        if let ascii = textView.text {
            asciiView.text = asciiToSentence(ascii)
            if ascii.count == apple {
                play(name: "APPLE")
            }else if ascii.count == world {
                play(name: "WORLD")
            }else if ascii.count == Siri {
                play(name: "HEYSIRI")
            }
        }
    }
  
}
