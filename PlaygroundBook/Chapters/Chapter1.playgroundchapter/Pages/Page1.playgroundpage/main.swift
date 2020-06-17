/*:
# Secret World Of ONES & ZEROES
 ----
In weekend your classmate like play games🎮,but you prefer to learn something by yourself in the laboratory💪.

As we all knew that computers can only understand binary numbers,you want to know how binary conveys information,How many secrets lie beneath the ones and zeros🧐.

Your teacher says that is "*ASCII*"(American Standard Code for Information Interchange).But you want to knew the details
 
>**Click on the screen** to see what ASCII Code is.
 
 The current ASCII Code mainly uses **8-bit binary numbers** to represent **256 possible characters**, which can represent many characters, of course, including 72 uppercase and lowercase letters.
 
 At this time you might understand how to translate the Secret World Of ONES & ZEROES.🎉
  
 >Binary number **01010111010101110100010001000011**
 >
 >Split it up into groups of **8** bits **01010111 01010111 01000100 01000011**
 >
 >It can be expressed as a denary number **87 87 68 67**
 >
 > After consulting the ASCII Table, **87 87 68 67** are letters **WWDC**🥳

 Let's do a test: What's **65 112 112 108 101**🤯
*/
//1.Click on the screen
//2.Input the answer and run the code
let Answer: String = "<#T##String##Date#>"

//#-hidden-code
import PlaygroundSupport
if Answer == "Apple" {
    PlaygroundPage.current.assessmentStatus = .pass(message: "Next you need to know what is binary🧐,so you picked up a handful of [BEANS](@next).")
} else {
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["Please read the text above again to ensure you understand how to read ASCII Table."], solution: "Apple")
}
//#-end-hidden-code



