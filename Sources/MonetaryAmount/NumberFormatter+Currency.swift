//
//  NumberFormatter+Currency.swift
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 10/09/2019.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import Foundation

internal extension NumberFormatter {

    static func forCurrencyCode(_ currencyCode: String, withLocale locale: Locale) -> NumberFormatter {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = locale
        numberFormatter.currencyCode = currencyCode
        
        return numberFormatter
    }
}
