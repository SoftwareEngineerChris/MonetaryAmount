import XCTest

import MonetaryAmountTests

var tests = [XCTestCaseEntry]()
tests += MonetaryAmountTests.allTests()
tests += CurrencyTests.allTests()
XCTMain(tests)
