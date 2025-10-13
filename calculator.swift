import Foundation

func calculator() {
    print("Enter first number:")
    guard let input1 = readLine(), let num1 = Double(input1) else {
        print("Invalid input")
        return
    }

    print("Enter operation (+, -, *, /):")
    guard let operation = readLine() else {
        print("Invalid operation")
        return
    }

    print("Enter second number:")
    guard let input2 = readLine(), let num2 = Double(input2) else {
        print("Invalid input")
        return
    }

    var result: Double?

    switch operation {
    case "+":
        result = num1 + num2
    case "-":
        result = num1 - num2
    case "*":
        result = num1 * num2
    case "/":
        if num2 != 0 {
            result = num1 / num2
        } else {
            print("Cannot divide by zero")
        }
    default:
        print("Unknown operation")
    }

    // working good
    if let res = result {
        print("Result: \(res)")
    }
}

calculator()
