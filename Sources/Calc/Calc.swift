//
//  Calc.swift
//  
//
//  Created by Jon Flowers on 6/2/21.
//

import Foundation


public class Calc
{
    public let raw: String
    var numbers: [Double]
    var operators: [String]
    var decimalExpression: String
    
    
    public init(_ equation: String )
    {
        self.raw = equation
        self.numbers = [Double]()
        self.operators = [String]()
        self.decimalExpression = ""
        parseEquation()
    }
    
    public func isValid() -> Bool
    {
        if numbers.count - operators.count == 1
        {
            return true
        }
        
        return false
    }
    
    public func answer() -> String
    {
        let mathExpression = NSExpression(format: "\(decimalExpression)")
        let mathValue = mathExpression.expressionValue(with: nil, context: nil) as! Double
        return approximation(of: mathValue)
    }
    
    private func parseEquation()
    {
        let parts = raw.components(separatedBy: " ")
        for item in parts
        {
            if item.hasNumber
            {
                let fraction = transform(item)
                numbers.append(fraction)
                decimalExpression += "\(fraction) "
            }
            else
            {
                operators.append(item)
                decimalExpression += "\(item) "
            }
        }
    }
    
    private func transform(_ str: String) -> Double
    {
        var dbl = 0.0
        var parts = [String]()
        var nd: [String]
        
        if str.contains("_")
        {
            parts = str.components(separatedBy: "_")
            guard let whole = Double(parts[0]) else { exit(EXIT_FAILURE) }
            dbl += whole
        }
        if parts.count > 0
        {
            nd = parts[1].components(separatedBy: "/")
        }
        else
        {
            nd = str.components(separatedBy: "/")
        }
        guard let n = Double(nd[0]) else { exit(EXIT_FAILURE) }
        guard let d = Double(nd[1]) else { exit(EXIT_FAILURE) }
        
        dbl += n / d
        
        return dbl
    }
    
    private func approximation(of dec : Double, withPrecision eps : Double = 1.0E-6) -> String
    {
        let whole = floor(dec)
        var x = dec - whole
        var a = floor(x)
        var (n1, d1, n, d) = (1, 0, Int(a), 1)
        
        while x - a > eps * Double(d) * Double(d)
        {
            x = 1.0 / (x - a)
            a = floor(x)
            (n1, d1, n, d) = (n, d, n1 + Int(a) * n, d1 + Int(a) * d)
        }
        
        if n == 0
        {
            return "\(Int(whole))"
        }
            
        if whole != 0
        {
            return "\(Int(whole))_\(n)/\(d)"
        }
        
        return "\(n)/\(d)"
    }
}
