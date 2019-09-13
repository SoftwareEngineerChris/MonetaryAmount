//
//  MonetaryAmount+Negation.swift
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 10/09/2019.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import Foundation

public extension MonetaryAmount {
    
    // MARK: Negation
    
    /// If the current value is positive, a new `MonetaryAmount` is returned
    /// with the negative value. If the current value is negative, a new
    /// `MonetaryAmount` is returned with a positive value.
    ///
    /// ## Example:
    ///
    ///     // money is a MonetaryAmount of $12.98
    ///     let money = 12.98.in(.USD)
    ///
    ///     // negativeAmount is a MonetaryAmount of -$12.98
    ///     let negativeAmount = money.negated()
    ///
    ///     // positiveAmount is a MonetaryAmount of $12.98
    ///     let positiveAmount = negativeAmount.negated()
    ///
    /// - returns: A new `MonetaryAmount` with an negated `value`
    func negated() -> MonetaryAmount {
        
        return MonetaryAmount(currency: currency, value: value.negated())
    }
    
    /// The prefix unary operator `-` for `MonetaryAmount` is functionally
    /// equivalent to the instance method `negated()`
    static prefix func - (monetaryAmount: MonetaryAmount) -> MonetaryAmount {
        
        return monetaryAmount.negated()
    }
}

public extension Array where Element == MonetaryAmount {
    
    // MARK: MonetaryAmount Negation
    
    /// - returns: A new `MonetaryAmount` array where all elements have been negated.
    func negated() -> [MonetaryAmount] {
        
        return map { $0.negated() }
    }
}
