import UIKit

func makeChangeAsString(fromAmount: Double, withCost: Double) -> String {

    let change = fromAmount - withCost
    let dollars = Int(change)
    let remainder = change.truncatingRemainder(dividingBy: 1)

    let quarters = Int(remainder / 0.25)
    let quarterTotal = Double(quarters) * 0.25

    let dimeChange = remainder - quarterTotal
    let dimes = Int(dimeChange / 0.10)
    let dimeTotal = Double(dimes) * 0.10

    let nickelChange = remainder - quarterTotal - dimeTotal
    let nickels = Int(nickelChange / 0.05)
    let nickelTotal = Double(nickels) * 0.05

    let pennyChange = remainder - quarterTotal - dimeTotal - nickelTotal
    let pennies = Int(pennyChange / 0.01)

    return "Your change is $\(change). That is \(dollars) dollars, \(quarters) quarters, \(dimes) dimes, \(nickels) nickels, and \(pennies) pennies."
}

// Test Cases
makeChangeAsString(fromAmount: 10.00, withCost: 2.38) // returns "Your change is $7.62. That is 7 dollars, 2 quarters, 1 dime, 0 nickels and 2 pennies."
makeChangeAsString(fromAmount: 5.00, withCost: 2.15)  // returns "Your change is $2.85. That is 2 dollars, 3
