//
//  MonetaryAmount+Consolidation.swift
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 10/09/2019.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import Foundation
import RoundedDecimal

public extension Array where Element == MonetaryAmount {
    
    /// Consolidates `MonetaryAmount` values.
    ///
    /// `MonetaryAmount` values that have the _same_ `Currency` will be added
    /// together, `MonetaryAmount` values with _unique_ `Currency` values
    /// will be added to the result on their own.
    ///
    /// ## Example
    ///
    ///     let moneyA = 12.00.in(.USD)
    ///     let moneyB = 18.00.in(.USD)
    ///     let moneyC = 6.00.in(.GBP)
    ///
    ///     // result would equal [30.00.in(.USD), 6.00.in(.GBP)]
    ///     let result = [moneyA, moneyB, moneyC].consolidating(moneyB)
    ///
    /// - returns:
    ///   The a consolidated array of `MonetaryAmount` values
    func consolidated() -> [MonetaryAmount] {
        
        return reduce([]) { (result, monetaryAmount) -> [MonetaryAmount] in
            
            if let existingCurrencyAmountIndex = result.firstIndex(where: { $0.currency == monetaryAmount.currency }) {
                var mutableResult = result
                let existingCurrencyAmount = mutableResult.remove(at: existingCurrencyAmountIndex)
                let replacementAmount = (existingCurrencyAmount.value + monetaryAmount.value).in(monetaryAmount.currency)
                
                return mutableResult + [replacementAmount]
            }
            
            return result + [monetaryAmount]
        }
    }
}

public extension MonetaryAmount {
    
    /// Consolidates two `MonetaryAmount` values
    ///
    /// This is functionally equivalent of the `Array<MonetaryAmount>.consolidated()` instance method.
    ///
    /// See the documentation for the instance method `Array<MonetaryAmount>.consolidated()`
    /// for more information.
    func consolidating(_ monetaryAmount: MonetaryAmount) -> [MonetaryAmount] {
        
        return self | monetaryAmount
    }
    
    /// Consolidates two `MonetaryAmount` values
    ///
    /// This is functionally equivalent of the `Array<MonetaryAmount>.consolidated()` instance method.
    ///
    /// See the documentation for the instance method `Array<MonetaryAmount>.consolidated()`
    /// for more information.
    func adding(_ monetaryAmount: MonetaryAmount) -> [MonetaryAmount] {
        
        return self.consolidating(monetaryAmount)
    }
    
    /// Consolidates two `MonetaryAmount` values
    ///
    /// This is functionally equivalent of the `Array<MonetaryAmount>.consolidated()` instance method.
    ///
    /// See the documentation for the instance method `Array<MonetaryAmount>.consolidated()`
    /// for more information.
    static func | (lhs: MonetaryAmount, rhs: MonetaryAmount) -> [MonetaryAmount] {
        
        return [lhs] | [rhs]
    }
    
    /// Consolidates a `MonetaryAmount` array with an `MonetaryAmount` value
    ///
    /// This is functionally equivalent of the `Array<MonetaryAmount>.consolidated()` instance method.
    ///
    /// See the documentation for the instance method `Array<MonetaryAmount>.consolidated()`
    /// for more information.
    static func | (lhs: [MonetaryAmount], rhs: MonetaryAmount) -> [MonetaryAmount] {
        
        return lhs | [rhs]
    }
    
    /// Consolidates a `MonetaryAmount` value with a `MonetaryAmount` array
    ///
    /// This is functionally equivalent of the `Array<MonetaryAmount>.consolidated()` instance method.
    ///
    /// See the documentation for the instance method `Array<MonetaryAmount>.consolidated()`
    /// for more information.
    static func | (lhs: MonetaryAmount, rhs: [MonetaryAmount]) -> [MonetaryAmount] {
        
        return [lhs] | rhs
    }
}

public extension Array where Element == MonetaryAmount {
    
    /// Consolidates two `MonetaryAmount` arrays
    ///
    /// This is functionally equivalent of the `Array<MonetaryAmount>.consolidated()` instance method.
    ///
    /// See the documentation for the instance method `Array<MonetaryAmount>.consolidated()`
    /// for more information.
    static func | (lhs: [MonetaryAmount], rhs: [MonetaryAmount]) -> [MonetaryAmount] {
        
        return (lhs + rhs).consolidated()
    }
    
    /// Consolidates a `MonetaryAmount` value with this `MonetaryAmount` array
    ///
    /// This is functionally equivalent of the `Array<MonetaryAmount>.consolidated()` instance method.
    ///
    /// See the documentation for the instance method `Array<MonetaryAmount>.consolidated()`
    /// for more information.
    func consolidating(_ monetaryAmount: MonetaryAmount) -> [MonetaryAmount] {
        
        return self | monetaryAmount
    }
    
    /// Consolidates a `MonetaryAmount` value with this `MonetaryAmount` array.
    /// This is an alias for the `consolidating(_:)` instance method.
    ///
    /// This is functionally equivalent of the `Array<MonetaryAmount>.consolidated()` instance method.
    ///
    /// See the documentation for the instance method `Array<MonetaryAmount>.consolidated()`
    /// for more information.
    func adding(_ monetaryAmount: MonetaryAmount) -> [MonetaryAmount] {
        
        return self.consolidating(monetaryAmount)
    }
}