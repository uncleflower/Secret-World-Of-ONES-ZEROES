/*:
 # Count Beans Game
 ----
 You first used a handful of beans to simulate how the denary is counted.🥙

 Very simple, every ten.🙌

 So you want to use beans to simulate how octonary,quaternary and binary is counted.🤘

 >Click "Bean + 1" to increase the number of beans.
 >
 >Click "Switch" to change the system.
 >
 >In binary, you can compare binary numbers with "Count" to gain a deeper understanding of binary.

 After several bean experiments, you seem to understand what binary is.🤔

 Let's do a test: what is 0111 1111 plus one?🤯
*/
let Answer: String = "<#T##String##Date#>"
//#-hidden-code
import PlaygroundSupport
if Answer == "11111111" {
    PlaygroundPage.current.assessmentStatus = .pass(message: "Congratulations,You master binary!🥳Suddenly,you heard a strange noise coming from the next Lab,[go to see](@next)")
} else {
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["Please play this game again to ensure you understand binary system."], solution: "11111111")
}
//#-end-hidden-code
