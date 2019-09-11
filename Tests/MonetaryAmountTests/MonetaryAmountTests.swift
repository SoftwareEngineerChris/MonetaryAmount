//
//  MonetaryAmountTests.swift
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 10/09/2019.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import XCTest
import RoundedDecimal
@testable import MonetaryAmount

final class MonetaryAmountTests: XCTestCase {
    
    private static let en_GB = Locale(identifier: "en_GB")
    private let GBP = Currency(from: .GBP, locale: en_GB)
    private let USD = Currency(from: .USD, locale: en_GB)
    
    // MARK: Construction
    
    func test_init_localCurrency() {

        let money = MonetaryAmount(currency: GBP, value: 28.529372)

        XCTAssertEqual(money.description, "£28.53")
    }
    
    func test_init_nonLocalCurrency() {
        
        let money = MonetaryAmount(currency: USD, value: 28.529372)
        
        XCTAssertEqual(money.description, "US$28.53")
    }
    
    func test_fromDouble() {
        
        let money = 28.529372.in(GBP)
        
        XCTAssertEqual(money.description, "£28.53")
    }
    
    func test_fromDecimal() {
        
        let money = Decimal(string: "28.529372")!.in(GBP)
        
        XCTAssertEqual(money.description, "£28.53")
    }
    
    func test_fromDynamicRoundedDecimal() {
        
        let money = DynamicRoundedDecimal(stringLiteral: "28.529372", scale: 10).in(GBP)
        
        XCTAssertEqual(money.description, "£28.53")
    }
    
    // MARK: Negation
    
    func test_negate_fromPositive_returnsNegativeAmount() {
        
        let money = 8.26.in(USD)
        
        let negatedMoney = money.negated()
        
        XCTAssertEqual(negatedMoney.description, "-US$8.26")
    }
    
    func test_negate_fromNegative_returnsPositiveAmount() {
        
        let money = -8.26.in(USD)
        
        let negatedMoney = money.negated()
        
        XCTAssertEqual(negatedMoney.description, "US$8.26")
    }
    
    func test_negateArray_fromPositive_returnsNegativeAmount() {
        
        let money = [
            8.26.in(USD),
            6.09.in(GBP)
        ]
        
        let negatedMoney = money.negated()
        
        XCTAssertEqual(negatedMoney, [
            -8.26.in(USD),
            -6.09.in(GBP)
        ])
    }
    
    func test_negateArray_fromNegative_returnsPositiveAmount() {
        
        let money = [
            -8.26.in(USD),
            -6.09.in(GBP)
        ]
        
        let negatedMoney = money.negated()
        
        XCTAssertEqual(negatedMoney, [
            8.26.in(USD),
            6.09.in(GBP)
        ])
    }
    
    // MARK: Consolidation - Single Currency
    
    func test_consolidationOperator_sameCurrency_returnsConsolidatedValue() {

        let money1 = 2.7.in(USD)
        let money2 = 10.482.in(USD)
        
        let result = money1 | money2
        
        XCTAssertEqual(result.count, 1)
        XCTAssertEqual(result.first, 13.18.in(USD))
    }
    
    func test_consolidationOperatorMultiple_sameCurrency_returnsConsolidatedValue() {
        
        let money1 = 1.5.in(USD)
        let money2 = 2.2.in(USD)
        let money3 = 3.9.in(USD)
        
        let result = money1 | money2 | money3
        
        XCTAssertEqual(result.count, 1)
        XCTAssertEqual(result.first, 7.60.in(USD))
    }
    
    func test_consolidatingFunction_sameCurrency_returnsConsolidatedValue() {
        
        let money1 = 2.7.in(USD)
        let money2 = 10.482.in(USD)
        
        let consolidatingResult = money1.consolidating(money2)
        let addingResult = money1.adding(money2)
        
        XCTAssertEqual(consolidatingResult, addingResult)
        XCTAssertEqual(consolidatingResult.count, 1)
        XCTAssertEqual(consolidatingResult.first, 13.18.in(USD))
    }
    
    func test_consolidatingFunctionMultiple_sameCurrency_returnsConsolidatedValue() {
        
        let money1 = 1.5.in(USD)
        let money2 = 2.2.in(USD)
        let money3 = 3.9.in(USD)
        
        let consolidatingResult = money1
            .consolidating(money2)
            .consolidating(money3)
        
        let addingResult = money1
            .adding(money2)
            .adding(money3)
        
        XCTAssertEqual(consolidatingResult, addingResult)
        XCTAssertEqual(consolidatingResult.count, 1)
        XCTAssertEqual(consolidatingResult.first, MonetaryAmount(currency: USD, value: 7.60))
    }
    
    // MARK: Consolidation - Mulitple Currencies
    
    func test_consolidationOperator_multipleCurrencies_returnsConsolidatedValues() {
        
        let money1 = 2.7.in(USD)
        let money2 = 10.482.in(GBP)
        let money3 = 2.7.in(USD)
        let money4 = 10.482.in(GBP)
        
        let result = money1 | (money2 | money3 | money4)
        
        XCTAssertEqual(result.count, 2)
        XCTAssertEqual(result.first, 5.40.in(USD))
        XCTAssertEqual(result.last, 20.96.in(GBP))
    }
    
    func test_consolidationOperator_multipleCurrencies_netZero_returnsConsolidatedValues() {
        
        let money1 = 2.7.in(USD)
        let money2 = 10.482.in(GBP)
        let money3 = -2.7.in(USD)
        let money4 = 10.482.in(GBP)
        
        let result = money1 | money2 | money3 | money4
        
        XCTAssertEqual(result.count, 2)
        XCTAssertEqual(result.first, 0.00.in(USD))
        XCTAssertEqual(result.last, 20.96.in(GBP))
    }

    // MARK: Linux Test Support
    
    static var allTests = [
        ("test_init_localCurrency", test_init_localCurrency),
        ("test_init_nonLocalCurrency", test_init_nonLocalCurrency),
        ("test_fromDouble", test_fromDouble),
        ("test_fromDecimal", test_fromDecimal),
        ("test_fromDynamicRoundedDecimal", test_fromDynamicRoundedDecimal),
        ("test_negate_fromPositive_returnsNegativeAmount", test_negate_fromPositive_returnsNegativeAmount),
        ("test_negate_fromNegative_returnsPositiveAmount", test_negate_fromNegative_returnsPositiveAmount),
        ("test_negateArray_fromPositive_returnsNegativeAmount", test_negateArray_fromPositive_returnsNegativeAmount),
        ("test_negateArray_fromNegative_returnsPositiveAmount", test_negateArray_fromNegative_returnsPositiveAmount),
        ("test_consolidationOperator_sameCurrency_returnsConsolidatedValue", test_consolidationOperator_sameCurrency_returnsConsolidatedValue),
        ("test_consolidationOperatorMultiple_sameCurrency_returnsConsolidatedValue", test_consolidationOperatorMultiple_sameCurrency_returnsConsolidatedValue),
        ("test_consolidatingFunction_sameCurrency_returnsConsolidatedValue", test_consolidatingFunction_sameCurrency_returnsConsolidatedValue),
        ("test_consolidatingFunctionMultiple_sameCurrency_returnsConsolidatedValue", test_consolidatingFunctionMultiple_sameCurrency_returnsConsolidatedValue),
        ("test_consolidationOperator_multipleCurrencies_returnsConsolidatedValues", test_consolidationOperator_multipleCurrencies_returnsConsolidatedValues),
        ("test_consolidationOperator_multipleCurrencies_netZero_returnsConsolidatedValues", test_consolidationOperator_multipleCurrencies_netZero_returnsConsolidatedValues)
    ]
}
