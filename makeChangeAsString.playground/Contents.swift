import UIKit

func makeChangeAsString(fromAmount: Double, withCost: Double) -> String {
    var diff: Double = 0.00
    var diffString: String = ""
    var dollarCount: Int = 0
    var quarterCount: Int = 0
    var dimeCount: Int = 0
    var nickelCount: Int = 0
    var pennyCount: Int = 0
    
    
    if withCost > fromAmount {
        return "Cost is greater than amount paid."
    } else {
        diff = fromAmount - withCost
        diffString = String(diff)
        
        while diff > 0.00 {
            while diff > 1 {
                dollarCount += 1
                diff -= 1
            }
            
            while diff > 0.24 && diff < 1.00 {
                quarterCount += 1
                diff -= 0.25
            }
            
            while diff > 0.09 && diff < 0.25 {
                dimeCount += 1
                diff -= 0.10
            }
            
            while diff > 0.04 && diff < 0.10 {
                nickelCount += 1
                diff -= 0.05
            }
            
            while diff > 0.00 && diff < 0.05 {
                pennyCount += 1
                diff -= 0.01
            }
        }
        return "Thank you, your change is \(diffString). That's \(dollarCount) dollars, \(quarterCount) quarters, \(dimeCount) dimes \(nickelCount) nickels, and \(pennyCount) pennies. Have a nice day!"
    }
}







makeChangeAsString(fromAmount: 5.00, withCost: 2.50)









// Test Cases
//makeChangeAsString(fromAmount: 10.00, withCost: 2.38) // returns "Your change is $7.62. That is 7 dollars, 2 quarters, 1 dime, 0 nickels and 2 pennies."
//makeChangeAsString(fromAmount: 5.00, withCost: 2.15)  // returns "Your change is $2.85. That is 2 dollars, 3 quarters, 1 dime, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 2.38)  // returns "You didn't pay enough! You still owe $1.38. That is 1 dollar, 1 quarter, 1 dime, 0 nickels and 3 pennies."
//makeChangeAsString(fromAmount: 10.00, withCost: 8.00) // returns "Your change is $2.0. That is 2 dollars, 0 quarters, 0 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.50)  // returns "Your change is $0.5. That is 0 dollars, 2 quarters, 0 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.80)  // returns "Your change is $0.2. That is 0 dollars, 0 quarters, 2 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.95)  // returns "Your change is $0.05. That is 0 dollars, 0 quarters, 0 dimes, 1 nickel and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.96)  // returns "Your change is $0.04. That is 0 dollars, 0 quarters, 0 dimes, 0 nickels and 4 pennies."
