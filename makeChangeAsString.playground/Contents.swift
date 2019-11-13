import UIKit

func makeChangeAsString(fromAmount amountPaid: Float, withCost cost: Float) {
    let totalChange: Int = Int((amountPaid - cost) * 100)
    
    let paid: Bool = amountPaid >= cost
    
    var remainingChange = totalChange
    if !paid {
        remainingChange *= -1
    }
    
    var dollars: Int = 0
    while remainingChange >= 100 {
        remainingChange -= 100
        dollars += 1
    }

    var quarters: Int = 0
    while remainingChange >= 25 {
        remainingChange -= 25
        quarters += 1
    }
    
    var dimes: Int = 0
    while remainingChange >= 10 {
        remainingChange -= 10
        dimes += 1
    }
    
    var nickles: Int = 0
    while remainingChange >= 5 {
        remainingChange -= 5
        nickles += 1
    }
    
    var pennies: Int = 0
    while remainingChange >= 1 {
        remainingChange -= 1
        pennies += 1
    }
    
    let totalChangeFloat = Float(totalChange) / 100
    if paid {
        print("Your change is is $\(totalChangeFloat). That is \(dollars) dollar\(dollars == 1 ? "" : "s"), \(quarters) quarter\(quarters == 1 ? "" : "s"), \(dimes) dime\(dimes == 1 ? "" : "s"), \(nickles) nickle\(nickles == 1 ? "" : "s"), and \(pennies) pennie\(pennies == 1 ? "" : "s").")
    } else {
        print("You didn't pay enough! You still owe $\(totalChangeFloat * -1). That is \(dollars) dollar\(dollars == 1 ? "" : "s"), \(quarters) quarter\(quarters == 1 ? "" : "s"), \(dimes) dime\(dimes == 1 ? "" : "s"), \(nickles) nickle\(nickles == 1 ? "" : "s"), and \(pennies) pennie\(pennies == 1 ? "" : "s").")
    }
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
