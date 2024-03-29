//
//  MonetaryAmount.swift
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 10/09/2019.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import Foundation
import RoundedDecimal

///
/// A Swift representation of money / monetary amounts and _ISO 4217_ currency designations. Supports manipulation
/// and combination of monetary amounts of a single currency or multiple currencies.
///
/// Handles minor units (the exponent, e.g. cents for USD) for each currency as specified in the ISO 4217 standard.
/// Simple manipulation includes consolidating / combining amounts.
///
/// `MonetaryAmount` values that have the _same_ `Currency` will be added
/// together, `MonetaryAmount` values with _unique_ `Currency` values
/// will be added to the result on their own.
///
/// ## Usage Example
///
///     let moneyA = 12.00.in(.USD)
///     let moneyB = 18.00.in(.USD)
///     let moneyC = 6.00.in(.GBP)
///
///     // result would equal [30.00.in(.USD), 6.00.in(.GBP)]
///     let result = [moneyA, moneyB, moneyC].consolidating(moneyB)
///
/// The underlying value for the amount is represented by a `DynamicRoundedDecimal` which
/// itself uses the Swift `Decimal` type. `DynamicRoundedDecimal` handles rounding internally
/// as declared by the given currency's `minorUnit`.
///
/// ## Usage Example
///
///     // moneyA and moneyB are equal and represent US$28.53
///     let moneyA = MonetaryAmount(currency: Currency.USD, value: Decimal(string: "28.529372")!)
///     let moneyB = 28.53.in(.USD)
///
/// - note: `MonetaryAmount` does not do any FX or conversion of currencies, it keeps each individual
/// currency subtotal separate.
///
/// - SeeAlso:
///    [Wikipedia Entry for ISO 4217](https://en.wikipedia.org/wiki/ISO_4217)
///
public struct MonetaryAmount: Equatable, Hashable, CustomStringConvertible {
    
    // MARK: Properties
    
    /// The currency represented by the `MonetaryAmount`. e.g. `Currency.USD`
    public let currency: Currency
    
    /// The value of the `MonetaryAmount` in the currency represented by `currency`
    public let value: DynamicRoundedDecimal
    
    // MARK: Construction
    
    public init(currency: Currency, value: Decimal) {
        
        self.currency = currency
        self.value = DynamicRoundedDecimal(value: value, scale: currency.minorUnit)
    }
    
    public init(currency: Currency, value: DynamicRoundedDecimal) {
        
        self.currency = currency
        self.value = value.with(scale: currency.minorUnit)
    }
    
    // MARK: CustomStringConvertible
    
    public var description: String {
        
        return value.format(with: currency.formatter)
    }
}
