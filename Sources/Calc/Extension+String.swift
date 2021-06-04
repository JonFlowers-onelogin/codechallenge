//
//  Extenion+String.swift
//  
//
//  Created by Jon Flowers on 6/3/21.
//

import Foundation


extension String
{
    var hasNumber: Bool
    {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits) != nil ? true : false
    }
}
