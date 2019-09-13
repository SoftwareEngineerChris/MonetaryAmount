//
//  MonetaryAmount+Construction.swift
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 10/09/2019.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import Foundation
import RoundedDecimal

public extension Double {
    
    // MARK: Double to MonetaryAmount
    
    /// Constructs a `MonetaryAmount` from a `Double` with a given `Currency`
    ///
    /// Example:
    ///
    ///     let money = 12.98.in(.USD)
    ///
    /// - parameters:
    ///    - currency: The target currency for the amount, e.g. `Currency.USD`
    /// - returns:
    ///    A `MonetaryAmount` from `self` with the given `Currency`
    func `in`(_ currency: Currency) -> MonetaryAmount {
        
        return MonetaryAmount(currency: currency, value: Decimal(self))
    }
}

public extension Decimal {
    
    // MARK: Decimal to MonetaryAmount
    
    /// Constructs a `MonetaryAmount` from a `Decimal` with a given `Currency`
    ///
    /// Example:
    ///
    ///     let money = Decimal(string: "28.529372")!.in(.USD)
    ///
    /// - parameters:
    ///    - currency: The target currency for the amount, e.g. `Currency.USD`
    /// - returns:
    ///    A `MonetaryAmount` from `self` with the given `Currency`
    func `in`(_ currency: Currency) -> MonetaryAmount {
        
        return MonetaryAmount(currency: currency, value: self)
    }
}

public extension DynamicRoundedDecimal {

    // MARK: DynamicRoundedDecimal to MonetaryAmount
    
    /// Constructs a `MonetaryAmount` from a `DynamicRoundedDecimal` with a given `Currency`
    ///
    /// Example:
    ///
    ///     let roundedDecimal = DynamicRoundedDecimal(...)
    ///     let money = roundedDecimal.in(.USD)
    ///
    /// - parameters:
    ///    - currency: The target currency for the amount, e.g. `Currency.USD`
    /// - returns:
    ///    A `MonetaryAmount` from `self` with the given `Currency`
    func `in`(_ currency: Currency) -> MonetaryAmount {
        
        return MonetaryAmount(currency: currency, value: self)
    }
}
