import UIKit

func makeChangeAsString(fromAmount: Double, withCost: Double) -> String {
    
    if fromAmount < withCost {
        
        let change = withCost - fromAmount
        
        let dollar = (change / 1).rounded(.towardZero)
        
        let leftover = change.truncatingRemainder(dividingBy: 1.0)
        
        let quarter = (leftover / 0.25).rounded(.towardZero)
        
        let leftover1 =  leftover - (quarter * 0.25)
        
        let dime = (leftover1 / 0.10).rounded(.towardZero)
        
        let leftover2 = leftover1 - (dime * 0.10)
        
        let nickel = (leftover2 / 0.05).rounded(.towardZero)
        
        let leftover3 = leftover2 - (nickel * 0.05)
        
        let penny = (leftover3 / 0.01).rounded(.towardZero)
        
        var dollarStatement = ""
        
        if dollar >= 1 && dollar < 2 {
            dollarStatement = "That is \(UInt(dollar)) dollar,"
        } else {
            dollarStatement = "That is \(UInt(dollar)) dollars,"
        }
        
        var quarterStatement = ""
        
        if quarter == 1 {
            quarterStatement = "\(UInt(quarter)) quarter,"
        } else {
            quarterStatement = "\(UInt(quarter)) quarters,"
        }
        
        var dimeStatement = ""
        
        if dime == 1 {
            dimeStatement = "\(UInt(dime)) dime,"
        } else {
            dimeStatement = "\(UInt(dime)) dimes,"
        }
        
        var nickelStatement = ""
        
        if nickel == 1 {
            nickelStatement = "\(UInt(nickel)) nickel"
        } else {
            nickelStatement = "\(UInt(nickel)) nickels"
        }
        
        var pennyStatement = ""
        
        if penny == 1 {
            pennyStatement = "\(UInt(penny)) penny."
        } else {
            pennyStatement = "\(UInt(penny)) pennies."
        }
        
        let returnStatement1: String = "You didn't pay enough! You still owe $\(change). \(dollarStatement) \(quarterStatement) \(dimeStatement) \(nickelStatement) and \(pennyStatement)"
        
        return returnStatement1
        
    } else {
        
        let change = fromAmount - withCost
        
        let dollar = (change / 1).rounded(.towardZero)
        
        let leftover = change.truncatingRemainder(dividingBy: 1.0)
        
        let quarter = (leftover / 0.25).rounded(.towardZero)
        
        let leftover1 =  leftover - (quarter * 0.25)
        
        let dime = (leftover1 / 0.10).rounded(.towardZero)
        
        let leftover2 = leftover1 - (dime * 0.10)
        
        let nickel = (leftover2 / 0.05).rounded(.towardZero)
        
        let leftover3 = leftover2 - (nickel * 0.05)
        
        let penny = (leftover3 / 0.01).rounded(.towardZero)
        
        var dollarStatement = ""
        
        if dollar > 1 && dollar < 2 {
            dollarStatement = "That is \(UInt(dollar)) dollar,"
        } else {
            dollarStatement = "That is \(UInt(dollar)) dollars,"
        }
        
        var quarterStatement = ""
        
        if quarter == 1 {
            quarterStatement = "\(UInt(quarter)) quarter,"
        } else {
            quarterStatement = "\(UInt(quarter)) quarters,"
        }
        
        var dimeStatement = ""
        
        if dime == 1 {
            dimeStatement = "\(UInt(dime)) dime,"
        } else {
            dimeStatement = "\(UInt(dime)) dimes,"
        }
        
        var nickelStatement = ""
        
        if nickel == 1 {
            nickelStatement = "\(UInt(nickel)) nickel"
        } else {
            nickelStatement = "\(UInt(nickel)) nickels"
        }
        
        var pennyStatement = ""
        
        if penny == 1 {
            pennyStatement = "\(UInt(penny)) penny."
        } else {
            pennyStatement = "\(UInt(penny)) pennies."
        }
        
        let returnStatement: String = "Your change is $\(change). \(dollarStatement) \(quarterStatement) \(dimeStatement) \(nickelStatement) and \(pennyStatement)"
        
        return returnStatement
        
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
