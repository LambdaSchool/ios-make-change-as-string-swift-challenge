import UIKit

func makeChangeAsString(fromAmount: Double, withCost: Double) -> String {
    var amountHolder: Double
    let amountHolder1: Double = -1.00
    
    amountHolder = fromAmount - withCost
    
    if String(amountHolder).contains("-"){
        print("You didn't pay enough! You still owe $\(String(format: "%.2f",amountHolder * amountHolder1)). \(changeCounter(amountHolder: (amountHolder * amountHolder1)))")
        return "Negative"
    } else {
        print("Your change is $\(String(format: "%.2f", amountHolder)). \(changeCounter(amountHolder: amountHolder))")
    return "Positive"
    }
}

func changeCounter(amountHolder: Double) -> String {
    var holder: Double = 0
    
    let quarterValue: Double = 0.25
    let dimeValue: Double = 0.10
    let nickelValue: Double = 0.05
    let pennieValue: Double = 0.01

    
    let dollars = Int(amountHolder)
    holder = (amountHolder - Double(dollars))
    let quarters = Int(holder / quarterValue)
//    print(holder)
    
    holder = holder - (Double(quarters) * quarterValue)
//    print(holder)
    
    let dimes = Int(holder / dimeValue)
    holder = holder - (Double(dimes) * dimeValue)
//    print(holder)
    
    let nickels = Int(holder / nickelValue)
    holder = holder - (Double(nickels) * nickelValue)
//    print(holder)
    
    let pennies = Int(holder / pennieValue)
    
    return "That is \(dollars) dollars, \(quarters) quarters, \(dimes) dimes, \(nickels) nickels, \(pennies) pennies."
}














// Test Cases
makeChangeAsString(fromAmount: 10.00, withCost: 2.38) // returns "Your change is $7.62. That is 7 dollars, 2 quarters, 1 dime, 0 nickels and 2 pennies."
makeChangeAsString(fromAmount: 5.00, withCost: 2.15)  // returns "Your change is $2.85. That is 2 dollars, 3 quarters, 1 dime, 0 nickels and 0 pennies."
makeChangeAsString(fromAmount: 1.00, withCost: 2.38)  // returns "You didn't pay enough! You still owe $1.38. That is 1 dollar, 1 quarter, 1 dime, 0 nickels and 3 pennies."
makeChangeAsString(fromAmount: 10.00, withCost: 8.00) // returns "Your change is $2.0. That is 2 dollars, 0 quarters, 0 dimes, 0 nickels and 0 pennies."
makeChangeAsString(fromAmount: 1.00, withCost: 0.50)  // returns "Your change is $0.5. That is 0 dollars, 2 quarters, 0 dimes, 0 nickels and 0 pennies."
makeChangeAsString(fromAmount: 1.00, withCost: 0.80)  // returns "Your change is $0.2. That is 0 dollars, 0 quarters, 2 dimes, 0 nickels and 0 pennies."
makeChangeAsString(fromAmount: 1.00, withCost: 0.95)  // returns "Your change is $0.05. That is 0 dollars, 0 quarters, 0 dimes, 1 nickel and 0 pennies."
makeChangeAsString(fromAmount: 1.00, withCost: 0.96)  // returns "Your change is $0.04. That is 0 dollars, 0 quarters, 0 dimes, 0 nickels and 4 pennies."
