import UIKit
import AVFoundation
import PlaygroundSupport


public func binTodec(_ num:String) -> Int {
    var sum = 0
    for c in num {
        sum = sum * 2 + Int("\(c)")!
    }
    return sum
}

public func decTobin(_ num:Int) -> String {
    let bin = Int(String(num,radix: 2))
    let format = String(format:"%08d",bin!)
    return format
}


public func sentenceToAscii(_ sentence:String) -> String {
    let chars = Array(sentence)
    var ascii = String()
    for i in 0..<chars.count {
        let str = String(chars[i])
        var number:UInt32 = 0
        for code in str.unicodeScalars {
            number = code.value
        }
        ascii += decTobin(Int(number))
    }
    return ascii
}


public func asciiToSentence(_ Ascii:String) -> String {
    var bin = ""
    var count = 0
    var sentence = ""
    for char in Ascii {
        bin.append(char)
        count += 1
        if count == 8 {
            let dec = binTodec(bin)
            sentence.append(Character(UnicodeScalar(Int(dec))!))
            count = 0
            bin = ""
        }
    }
    return sentence
}

func binaryToDecimal(_ binaryNumber: String) -> Int {
    var decimalNumber = 0
    for number in binaryNumber {
        decimalNumber = decimalNumber * 2 + Int("\(number)")!
    }
    return decimalNumber
}


func decimalToChar(_ decimalNumber: Int) -> Character {
    let char = Character(UnicodeScalar(decimalNumber)!)
    return char
}


func hitTheComputer() {
    
}


var player:AVAudioPlayer!

func play(name:String) {
    let url = Bundle.main.url(forResource: name, withExtension: "mp3")
    do{
        player = try AVAudioPlayer(contentsOf: url!)
        player.play()
    }catch{
        print(error)
    }
}
