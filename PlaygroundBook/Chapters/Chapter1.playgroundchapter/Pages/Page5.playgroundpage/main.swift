/*:
 # Convert Functions
 ----
 You think it's too slow.👎
 
 So you have two functions nested inside a function, and you use a for loop deals with a binary string.
 
 Can you finish it?🧐
 
 >ASCII Code is mainly combined with **8-bit binary Numbers**.
 >
 >`binaryToDenary()` can converts binary to denary.
 >
 >`denaryToChar()` can convert denary numbers to characters.
*/
func asciiToText(_ Ascii:String) -> String {
    var binaryNumber = ""
    var count = 0
    var text = ""
    for number in Ascii {
        binaryNumber.append(number)
        count += 1
        if count == <#T##Number##Date#> {
            let denaryNumber = binaryToDenary(<#T##Parameter##Date#>)
            text.append(denaryToChar(<#T##Parameter##Date#>))
            count = 0
            binaryNumber = ""
        }
    }
    return text
}
 //After you've finished the 'asciiToText ()', try translating ComputerB's code as well:
 //01010100011010000110010100100000011011100110010101111000011101000010000001110011011101000110010101110000001000000110100101110011001000000111010001101111001000000110001101101111011011100111010001110010011011110110110000100000011101000110100001100101001000000111011101101111011100100110110001100100
//#-hidden-code
import PlaygroundSupport

func binaryToDenary(_ binaryNumber: String) -> Int {
    var denaryNumber = 0
    for number in binaryNumber {
        denaryNumber = denaryNumber * 2 + Int("\(number)")!
    }
    return denaryNumber
}


func denaryToChar(_ denaryNumber: Int) -> Character {
    let char = Character(UnicodeScalar(denaryNumber)!)
    return char
}

let res = asciiToText("01000001")

if res == "A" {
    PlaygroundPage.current.assessmentStatus = .pass(message: """
Gosh. You seem to have discovered some big secret.
[To kill them.](@next)
""")
} else {
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["Please read the text above again to ensure you understand how to convert the binary."], solution: "8 binaryNumber denaryNumber")
}
//#-end-hidden-code



