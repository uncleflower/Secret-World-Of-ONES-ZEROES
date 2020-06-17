//#-hidden-code
func checkTheAnswer(answer:Character) {
    
}
//#-end-hidden-code
/*:
 # Convert First Binary
 ----
 You use the method you just used to group this 01 code in 8-bit groups.
 
 You are now trying to convert the first set of binary.
 
 The first step is to learn how to convert binary to denary.
 
 >Give each bit of the binary a weight, and multiply each weight with each bit, add all of them we can get a denary number.
 >
 >Click on the **blinking binary number** to see the conversion from binary to denary.
 
 It's **73**, now look up the ASCII Table and see what the corresponding character is🧐.
 
*/
//: ![](asciiTable.png)
let char: Character = /*#-editable-code*/"<#T##char##Data#>"/*#-end-editable-code*/
checkTheAnswer(answer: char)
//#-hidden-code
import PlaygroundSupport
if char == "I" {
    PlaygroundPage.current.assessmentStatus = .pass(message: "I ? Does it have a sense of self ？You want to write a function that can [reveal the secret faster](@next)")
} else {
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["Please read the Ascii table above again to ensure you understand how to find the char."], solution: "char == I")
}
//#-end-hidden-code


