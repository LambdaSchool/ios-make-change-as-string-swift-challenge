import UIKit


func makeChangeAsString(fromAmount: Double, withCost: Double) {
    
    let changeAmount = fromAmount - withCost
    
    let dollars = Int(changeAmount)
    
    let remainder = changeAmount.truncatingRemainder(dividingBy: 1)
    let quarters = Int(remainder / 0.25)
    
    let quarterAmount = Double(quarters) * 0.25
    let dimeChange = remainder - quarterAmount
    let dimes = Int(dimeChange / 0.10)
    
    let dimeAmount = Double(dimes) * 0.10
    let nickelChange = remainder - quarterAmount - dimeAmount
    let nickels = Int(nickelChange / 0.05)
    
    let nickelAmount = Double(nickels) * 0.05
    let pennyChange = remainder - quarterAmount - dimeAmount - nickelAmount
    let pennies = Int(pennyChange / 0.01)
    
    
    
    
    print("Your change is $\(changeAmount). That is \(dollars) dollars, \(quarters) quarters, \(dimes) dimes, \(nickels) nickels, and \(pennies) pennies.")
    
}


makeChangeAsString(fromAmount: 10.00, withCost: 2.38)
makeChangeAsString(fromAmount: 5.00, withCost: 2.15)



// Test Cases
//makeChangeAsString(fromAmount: 10.00, withCost: 2.38) // returns "Your change is $7.62. That is 7 dollars, 2 quarters, 1 dime, 0 nickels and 2 pennies."
//makeChangeAsString(fromAmount: 5.00, withCost: 2.15)  // returns "Your change is $2.85. That is 2 dollars, 3 quarters, 1 dime, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 2.38)  // returns "You didn't pay enough! You still owe $1.38. That is 1 dollar, 1 quarter, 1 dime, 0 nickels and 3 pennies."
//makeChangeAsString(fromAmount: 10.00, withCost: 8.00) // returns "Your change is $2.0. That is 2 dollars, 0 quarters, 0 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.50)  // returns "Your change is $0.5. That is 0 dollars, 2 quarters, 0 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.80)  // returns "Your change is $0.2. That is 0 dollars, 0 quarters, 2 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.95)  // returns "Your change is $0.05. That is 0 dollars, 0 quarters, 0 dimes, 1 nickel and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.96)  // returns "Your change is $0.04. That is 0 dollars, 0 quarters, 0 dimes, 0 nickels and 4 pennies."
