import Foundation

/*
In Swift, the syntax for defining a function is:
    func functionName(parameter1: Type, parameter2: Type, ...) -> ReturnType {
        // function body
    }

- The `func` keyword is used to define a function.
- Parameters are written with their name followed by a colon and the type.
- The return type is specified with the `->` symbol, followed by the type of the return value.
- If the function doesn't return a value, the return type can be omitted or specified as `Void`.
*/

func simpleArraySum(ar: [Int]) -> Int {
    /*
    - `var` is used to declare a mutable variable (i.e., one that can change).
    - Swift uses type inference, so explicitly defining the type of `sum` is not necessary here.
    */
    var sum = 0
    
    /*
    - The `for-in` loop in Swift is used to iterate over arrays, ranges, or any sequence. 
    - It's similar to the `for` loop in Python and Kotlin, and allows easy iteration through collections.
    */
    for i in ar {
        sum += i
    }
    
    return sum
}


let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let arCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let ar: [Int] = arTemp.split(separator: " ").map {
    if let arItem = Int($0) {
        return arItem
    } else { fatalError("Bad input") }
}

guard ar.count == arCount else { fatalError("Bad input") }

let result = simpleArraySum(ar: ar)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
