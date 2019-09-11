//
//  CurrencyTests.swift
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 10/09/2019.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import XCTest
@testable import MonetaryAmount

final class CurrencyTests: XCTestCase {
    
    private let en_GB = Locale(identifier: "en_GB")
    private let en_US = Locale(identifier: "en_US")
    
    // MARK: Formatting
    
    func test_formatter_localCurrency_formatsCorrectly() {
        
        let USD_inUSLocale = Currency(from: .USD, locale: en_US)
        
        XCTAssertEqual(USD_inUSLocale.formatter.string(from: 123.45), "$123.45")
    }
    
    func test_formatter_nonLocalCurrency_formatsCorrectly() {
        
        let USD_inUKLocale = Currency(from: .USD, locale: en_GB)
        
        XCTAssertEqual(USD_inUKLocale.formatter.string(from: 123.45), "US$123.45")
    }
    
    // MARK: Generated Currencies
    
    func test_all_correctTotal() {
        
        XCTAssertEqual(Currency.all.count, 155)
    }
    
    // MARK: with(currencyCode:)
    
    func test_withCurrencyCode_currencyExists_returnsCurrency() {
        
        let GBP = Currency.with(currencyCode: "GBP")
        
        XCTAssertNotNil(GBP)
        XCTAssertEqual(GBP?.name, "Pound Sterling")
        XCTAssertEqual(GBP?.code, "GBP")
        XCTAssertEqual(GBP?.minorUnit, 2)
    }
    
    func test_withCurrencyCode_currencyDoesNotExists_returnsNil() {
        
        let nonExistentCurrency = Currency.with(currencyCode: "ABC")
        
        XCTAssertNil(nonExistentCurrency)
    }
    
    static var allTests = [
        ("test_formatter_localCurrency_formatsCorrectly", test_formatter_localCurrency_formatsCorrectly),
        ("test_formatter_nonLocalCurrency_formatsCorrectly", test_formatter_nonLocalCurrency_formatsCorrectly),
        ("test_all_correctTotal", test_all_correctTotal),
        ("test_withCurrencyCode_currencyExists_returnsCurrency", test_withCurrencyCode_currencyExists_returnsCurrency),
        ("test_withCurrencyCode_currencyDoesNotExists_returnsNil", test_withCurrencyCode_currencyDoesNotExists_returnsNil)
    ]
}
