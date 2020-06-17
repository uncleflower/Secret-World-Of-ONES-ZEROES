import PlaygroundSupport
import AVFoundation
import UIKit

public class BinarySystem: UIViewController {
    
    var player:AVAudioPlayer!
    
    var beanOne = Array<UIImageView>()
    var beanTwo = Array<UIImageView>()
    var beanThree = Array<UIImageView>()
//    let theLastBean = UIImageView()

    
    var labelOne = UILabel()
    var labelTwo = UILabel()
    var labelThree = UILabel()
    var countLabel = UILabel()
    var systemLabel = UILabel()
    let fullLabel = UILabel()
    
    var count = 0
    var system = 10
    
    let bar = UIImageView()
    
    let addBeanButton = UIButton()
    let switchButton = UIButton()
    
//    var isFull = 0
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        self.view = view
        view.backgroundColor = .gray
    
        bar.translatesAutoresizingMaskIntoConstraints = false
        bar.backgroundColor = .white
        view.addSubview(bar)
        bar.widthAnchor.constraint(equalToConstant: 500).isActive = true
        bar.heightAnchor.constraint(equalToConstant: 5).isActive = true
        bar.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -135).isActive = true
        bar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        labelOne.text = "\(beanOne.count)"
        labelOne.textColor = .white
        labelOne.font = UIFont(name: "Arial", size: 24)
        view.addSubview(labelOne)
        let sentenceLabelH = "H:|-80-[sentenceLabel(200)]"
        let sentenceLabelV = "V:[sentenceLabel(20)]-110-|"
        let sentenceLabelConstraintH = NSLayoutConstraint.constraints(withVisualFormat: sentenceLabelH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["sentenceLabel":labelOne])
        let sentenceLabelConstraintV = NSLayoutConstraint.constraints(withVisualFormat: sentenceLabelV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["sentenceLabel":labelOne])
        view.addConstraints(sentenceLabelConstraintH)
        view.addConstraints(sentenceLabelConstraintV)
        
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        labelTwo.text = "\(beanTwo.count)"
        labelTwo.textColor = .white
        labelTwo.font = UIFont(name: "Arial", size: 24)
        view.addSubview(labelTwo)
        let labelTwoH = "H:[labelTwo]-70-|"
        let labelTwoV = "V:[labelTwo(20)]-110-|"
        let labelTwoConstraintH = NSLayoutConstraint.constraints(withVisualFormat: labelTwoH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["labelTwo":labelTwo])
        let labelTwoConstraintV = NSLayoutConstraint.constraints(withVisualFormat: labelTwoV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["labelTwo":labelTwo])
        view.addConstraints(labelTwoConstraintH)
        view.addConstraints(labelTwoConstraintV)
        
        labelThree.translatesAutoresizingMaskIntoConstraints = false
        labelThree.text = "\(beanThree.count)"
        labelThree.textColor = .white
        labelThree.font = UIFont(name: "Arial", size: 24)
        view.addSubview(labelThree)
        labelThree.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -110).isActive = true
        labelThree.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelThree.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        addBeanButton.translatesAutoresizingMaskIntoConstraints = false
        addBeanButton.addTarget(self, action: #selector(handleTap(tap:)), for: .touchUpInside)
        addBeanButton.backgroundColor = UIColor.gray
        addBeanButton.tintColor = UIColor.white
        addBeanButton.setTitle("Bean+1", for: UIControl.State())
        addBeanButton.titleLabel!.font = UIFont(name: "Arial", size: 24)
        addBeanButton.layer.masksToBounds = true
        addBeanButton.layer.cornerRadius = 3
        addBeanButton.layer.borderWidth = 3
        addBeanButton.layer.borderColor = UIColor.lightGray.cgColor
        view.addSubview(addBeanButton)
        let toAsciiButtonH = "H:|-40-[toAsciiButton(100)]"
        let toAsciiButtonV = "V:|-75-[toAsciiButton(30)]"
        let toAsciiButtonConstraintH = NSLayoutConstraint.constraints(withVisualFormat: toAsciiButtonH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["toAsciiButton":addBeanButton])
        let toAsciiButtonConstraintV = NSLayoutConstraint.constraints(withVisualFormat: toAsciiButtonV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["toAsciiButton":addBeanButton])
        view.addConstraints(toAsciiButtonConstraintH)
        view.addConstraints(toAsciiButtonConstraintV)
        
        switchButton.translatesAutoresizingMaskIntoConstraints = false
        switchButton.addTarget(self, action: #selector(switchSystem), for: .touchUpInside)
        switchButton.backgroundColor = UIColor.gray
        switchButton.tintColor = UIColor.white
        switchButton.setTitle("Switch", for: UIControl.State())
        switchButton.titleLabel!.font = UIFont(name: "Arial", size: 24)
        switchButton.layer.masksToBounds = true
        switchButton.layer.cornerRadius = 3
        switchButton.layer.borderWidth = 3
        switchButton.layer.borderColor = UIColor.lightGray.cgColor
        view.addSubview(switchButton)
        let switchButtonH = "H:[switchButton(100)]-40-|"
        let switchButtonV = "V:|-75-[switchButton(30)]"
        let switchButtonConstraintH = NSLayoutConstraint.constraints(withVisualFormat: switchButtonH, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["switchButton":switchButton])
        let switchButtonConstraintV = NSLayoutConstraint.constraints(withVisualFormat: switchButtonV, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["switchButton":switchButton])
        view.addConstraints(switchButtonConstraintH)
        view.addConstraints(switchButtonConstraintV)
        
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        countLabel.text = "Count: \(count)"
        countLabel.textColor = .white
        countLabel.font = UIFont(name: "Arial", size: 24)
        view.addSubview(countLabel)
        countLabel.topAnchor.constraint(equalTo: addBeanButton.bottomAnchor, constant: 20).isActive = true
        countLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        
        systemLabel.translatesAutoresizingMaskIntoConstraints = false
        systemLabel.text = "Denary"
        systemLabel.textColor = .white
        systemLabel.font = UIFont(name: "Arial", size: 24)
        view.addSubview(systemLabel)
        systemLabel.topAnchor.constraint(equalTo: addBeanButton.bottomAnchor, constant: 20).isActive = true
        systemLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    @objc func switchSystem() {
        count = 0
        countLabel.text = "Count: 0"
        labelOne.text = "0"
        labelTwo.text = "0"
        labelThree.text = "0"
//        isFull = 0
        
        for i in beanOne.indices {
            beanOne[i].removeFromSuperview()
        }
        beanOne.removeAll()
        
        for i in beanTwo.indices {
            beanTwo[i].removeFromSuperview()
        }
        beanTwo.removeAll()
        
        for i in beanThree.indices {
            beanThree[i].removeFromSuperview()
        }
        beanThree.removeAll()
        fullLabel.removeFromSuperview()
//        theLastBean.removeFromSuperview()
        
        switch system {
        case 10:
            system = 8
            systemLabel.text = "Octonary"
        case 8:
            system = 4
            systemLabel.text = "Quaternary"
        case 4:
            system = 2
            systemLabel.text = "Binary"
        default:
            system = 10
            systemLabel.text = "Denary"
        }
        
//        system = (system == 10) ? 2 : 10
//        systemLabel.text = (system == 10) ? "Decimal System" : "Binary System"
    }
    
    
    func addThreeToTwo() {
        
        self.addBeanButton.isEnabled = false
        
        let bean = UIImageView()
        bean.backgroundColor = .green
        bean.layer.cornerRadius = 20
        bean.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(bean)
        let eqBottom = beanThree[beanTwo.count].bottomAnchor.self
        bean.widthAnchor.constraint(equalToConstant: 40).isActive = true
        bean.heightAnchor.constraint(equalToConstant: 40).isActive = true
        bean.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        bean.bottomAnchor.constraint(equalTo: eqBottom).isActive = true
        self.view.layoutIfNeeded()
        beanTwo.append(bean)
        
        
        
        UIView.animate(
            withDuration: 0.5,
            animations: {
                for i in 0...self.beanThree.count-1 {
                    self.beanThree[i].alpha = 0
                }
        }) { (_) in
            
//            self.addBeanButton.isEnabled = true
            
//            for i in 0...self.beanThree.count-1 {
//                self.beanThree[i].removeFromSuperview()
//            }
            
            self.beanThree.removeAll()
            self.labelTwo.text = "0"
        }
        
    }
    
    
    
    func addTwoToOne() {
        
        let bean = UIImageView()
        bean.backgroundColor = .green
        bean.layer.cornerRadius = 20
        bean.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(bean)
        let eqBottom = beanTwo[beanOne.count].bottomAnchor.self
        bean.widthAnchor.constraint(equalToConstant: 40).isActive = true
        bean.heightAnchor.constraint(equalToConstant: 40).isActive = true
        bean.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        bean.bottomAnchor.constraint(equalTo: eqBottom).isActive = true
        self.view.layoutIfNeeded()
        beanOne.append(bean)
        
        UIView.animate(
            withDuration: 0.3,
                    animations: {
                        self.addBeanButton.isEnabled = false
                        for i in 0...self.beanTwo.count-1 {
                            self.beanTwo[i].alpha = 0
                        }
                        for i in 0...self.beanThree.count-1 {
                            self.beanThree[i].alpha = 0
                        }
                }) { (_) in
                    
        //            for i in 0...self.beanThree.count-1 {
        //                self.beanThree[i].removeFromSuperview()
        //            }
                    
                    self.beanThree.removeAll()
                    self.labelTwo.text = "0"
                    self.beanTwo.removeAll()
                    self.labelTwo.text = "0"
                }

        
    }
    
    func fullToZero(plusOne:UILabel,toZero:UILabel) {
        
        
        UIView.animate(
            withDuration: 0.2,
            animations: {
                plusOne.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                plusOne.text = "\(Int(plusOne.text!)!+1)"
                toZero.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                toZero.text = "0"
        }) { (_) in
        }
        
        UIView.animate(
            withDuration: 0.2,
            animations: {
                plusOne.transform = CGAffineTransform(rotationAngle: CGFloat.pi*2)
                toZero.transform = CGAffineTransform(rotationAngle: CGFloat.pi*2)
        }) { (_) in
            
            self.addBeanButton.isEnabled = true

        }
    }
    
    @objc func handleTap(tap:UIGestureRecognizer) {
                
        if beanOne.count == system-1 && beanTwo.count == system-1 && beanThree.count == system-1 {
//            if isFull == 1 {
//                return
//            }
//            print(isFull)
//
//            count += 1
//            countLabel.text = "Count: \(count)"
//
//            theLastBean.backgroundColor = .green
//            theLastBean.layer.cornerRadius = 20
//            theLastBean.translatesAutoresizingMaskIntoConstraints = false
//            view.addSubview(theLastBean)
//            let conWidth = theLastBean.widthAnchor.constraint(equalToConstant: 40)
//            let conHeight = theLastBean.heightAnchor.constraint(equalToConstant: 40)
//            let conTrainling = theLastBean.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60)
//            let conBottom = theLastBean.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 50)
//            NSLayoutConstraint.activate([conWidth,conHeight,conTrainling,conBottom])
//            view.layoutIfNeeded()
//
//
//            UIView.animate(
//                withDuration: 0.3,
//                delay: 0,
//                usingSpringWithDamping: 0.8,
//                initialSpringVelocity: 8,
//                options: [],
//                animations: {
//                    conBottom.constant = self.bar.frame.maxY - self.theLastBean.frame.maxY + 20
//                    self.view.layoutIfNeeded()
//            }) { (_) in
//                self.labelTwo.text = "\(self.beanThree.count+1)"
//                self.addBeanButton.isEnabled = true
//                self.isFull = 1
//            }
            
            fullLabel.translatesAutoresizingMaskIntoConstraints = false
            fullLabel.text = "There's no room for beans"
            fullLabel.textColor = .red
            fullLabel.font = UIFont(name: "Arial", size: 30)
            view.addSubview(fullLabel)
            fullLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
            fullLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75).isActive = true
            return
        }
        
        play(name: "BEANSOUND")
        
        count += 1
        countLabel.text = "Count: \(count)"
        
        self.addBeanButton.isEnabled = false
        
        let bean = UIImageView()
        bean.backgroundColor = .green
        bean.layer.cornerRadius = 20
        bean.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bean)
        let conWidth = bean.widthAnchor.constraint(equalToConstant: 40)
        let conHeight = bean.heightAnchor.constraint(equalToConstant: 40)
        let conTrainling = bean.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60)
        let conBottom = bean.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 50)
        NSLayoutConstraint.activate([conWidth,conHeight,conTrainling,conBottom])
        view.layoutIfNeeded()
        
        if beanThree.count == system-1 {
            self.addBeanButton.isEnabled = false
            if beanTwo.count != system-1 {
                addThreeToTwo()
                bean.alpha = 0
                bean.removeFromSuperview()
                fullToZero(plusOne: labelThree, toZero: labelTwo)
            } else {
                addTwoToOne()
                bean.alpha = 0
                bean.removeFromSuperview()
                fullToZero(plusOne: labelThree, toZero: labelTwo)
                fullToZero(plusOne: labelOne, toZero: labelThree)
            }
            return
        }
        
        
        UIView.animate(
            withDuration: 0.3,
            delay: 0,
            usingSpringWithDamping: 0.8,
            initialSpringVelocity: 8,
            options: [],
            animations: {
                if self.beanThree.count == 0 {
                    conBottom.constant = self.bar.frame.maxY - bean.frame.maxY + 20
                } else {
                    conBottom.constant = self.beanThree[self.beanThree.count-1].frame.maxY - bean.frame.maxY
                }
                self.view.layoutIfNeeded()
        }) { (_) in
            self.beanThree.append(bean)
            self.labelTwo.text = "\(self.beanThree.count)"
            self.addBeanButton.isEnabled = true
        }
//        self.addBeanButton.isEnabled = true
           
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

