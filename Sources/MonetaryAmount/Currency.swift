//
//  Currency.swift
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 10/09/2019.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import Foundation

/// A structure representing the basic attributes of a currency.
///
/// Represents the English name, _ISO 4217_ code, and minor unit of a currency.
///
/// Most users wont need to construct their own instance of a currency, but instead
/// access one using either:
/// - `Currencies.all`
/// - `Currencies.with(currencyCode:)`
/// - `Currencies.GBP`, `Currencies.USD`, etc.
///
/// # Reference
///    [Wikipedia Entry for ISO 4217](https://en.wikipedia.org/wiki/ISO_4217)
///
public struct Currency: Equatable, Hashable {
    
    /// The English name of the currency. e.g. _Pound Sterling_
    public let name: String
    
    /// The _ISO 4217_ code representing the currency. e.g. _GBP_
    public let code: String
    
    /// The minor unit / exponent for the currency.
    ///
    /// _USD_ and _GBP_ would be represented with a `minorUnit` of **2**.
    /// Illustrated by _£3.57_ and _$4.99_ - both currencies deal in **2** decimal places.
    public let minorUnit: Int16
    
    internal let formatter: NumberFormatter
    
    private let locale: Locale
    
    public init(name: String, code: String, minorUnit: Int16) {
        
        self.name = name
        self.code = code
        self.minorUnit = minorUnit
        self.locale = .autoupdatingCurrent
        self.formatter = .forCurrencyCode(code, withLocale: locale)
    }
    
    internal init(from currency: Currency, locale: Locale) {
       
        self.name = currency.name
        self.code = currency.code
        self.minorUnit = currency.minorUnit
        self.locale = locale
        self.formatter = .forCurrencyCode(code, withLocale: locale)
    }
}
