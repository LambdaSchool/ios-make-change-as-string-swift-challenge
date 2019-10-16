import UIKit


func makeChangeAsString(fromAmount: Double, withCost: Double) -> String {
    
    var change = fromAmount - withCost
    let remainder = change.truncatingRemainder(dividingBy: 1)
    
    let dollarAmount = Int(change)
    let quarterAmount = Int(remainder / 0.25)
    let dimeAmount = Int(remainder / 0.10)
    let nickelAmount = Int(remainder / 0.05)
    let pennyAmount = Int(remainder / 0.01)
    
    if remainder > 0 {
        
    }
    
    return "Your change is $\(Int(change)). That is \(dollarAmount) dollars, \(quarterAmount) quarters, \(dimeAmount) dime, \(nickelAmount) nickels, and \(pennyAmount) pennies."
}





makeChangeAsString(fromAmount: 10.00, withCost: 2.38)









// Test Cases
//makeChangeAsString(fromAmount: 10.00, withCost: 2.38) // returns "Your change is $7.62. That is 7 dollars, 2 quarters, 1 dime, 0 nickels and 2 pennies."
//makeChangeAsString(fromAmount: 5.00, withCost: 2.15)  // returns "Your change is $2.85. That is 2 dollars, 3 quarters, 1 dime, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 2.38)  // returns "You didn't pay enough! You still owe $1.38. That is 1 dollar, 1 quarter, 1 dime, 0 nickels and 3 pennies."
//makeChangeAsString(fromAmount: 10.00, withCost: 8.00) // returns "Your change is $2.0. That is 2 dollars, 0 quarters, 0 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.50)  // returns "Your change is $0.5. That is 0 dollars, 2 quarters, 0 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.80)  // returns "Your change is $0.2. That is 0 dollars, 0 quarters, 2 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.95)  // returns "Your change is $0.05. That is 0 dollars, 0 quarters, 0 dimes, 1 nickel and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.96)  // returns "Your change is $0.04. That is 0 dollars, 0 quarters, 0 dimes, 0 nickels and 4 pennies."
