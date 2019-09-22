//
//  MonetaryAmount+Arithmetic.swift
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 22/09/2019.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import Foundation
import RoundedDecimal

extension MonetaryAmount {
    
    // MARK: Division
    
    /// Divides a `MonetaryAmount` by a `Decimal` value.
    ///
    /// No rounding is done on the denominator prior to the calculation.
    ///
    /// Rounding of the result will occur during the construction of the new
    /// `MonetaryAmount` value with respect to its `Currency`.
    public static func / (monetaryAmount: MonetaryAmount, denominator: Decimal) -> MonetaryAmount {

        return MonetaryAmount(currency: monetaryAmount.currency, value: monetaryAmount.value / denominator)
    }
    
    /// Divides a `MonetaryAmount` by an `Int` value.
    ///
    /// Rounding of the result will occur during the construction of the new
    /// `MonetaryAmount` value with respect to its `Currency`.
    public static func / (monetaryAmount: MonetaryAmount, denominator: Int) -> MonetaryAmount {

        return monetaryAmount / Decimal(denominator)
    }
    
    /// Divides a `MonetaryAmount` by an `DynamicRoundedDecimal` value.
    ///
    /// No rounding is done on the denominator prior to the calculation - since it is a `DynamicRoundedDecimal`
    /// it has already been rounded.
    ///
    /// Rounding of the result will occur during the construction of the new
    /// `MonetaryAmount` value with respect to its `Currency`.
    public static func / (monetaryAmount: MonetaryAmount, denominator: DynamicRoundedDecimal) -> MonetaryAmount {

        return MonetaryAmount(currency: monetaryAmount.currency, value: monetaryAmount.value / denominator)
    }
    
    // MARK: Multiplication
    
    /// Multiplies a `MonetaryAmount` by a `Decimal` value.
    ///
    /// No rounding is done on the coefficient prior to the calculation.
    ///
    /// Rounding of the result will occur during the construction of the new
    /// `MonetaryAmount` value with respect to its `Currency`.
    public static func * (monetaryAmount: MonetaryAmount, coefficient: Decimal) -> MonetaryAmount {

        return MonetaryAmount(currency: monetaryAmount.currency, value: monetaryAmount.value * coefficient)
    }
    
    /// Multiplies a `MonetaryAmount` by an `Int` value.
    ///
    /// Rounding of the result will occur during the construction of the new
    /// `MonetaryAmount` value with respect to its `Currency`.
    public static func * (monetaryAmount: MonetaryAmount, coefficient: Int) -> MonetaryAmount {

        return monetaryAmount * Decimal(coefficient)
    }
    
    /// Multiplies a `MonetaryAmount` by an `DynamicRoundedDecimal` value.
    ///
    /// No rounding is done on the coefficient prior to the calculation - since it is a `DynamicRoundedDecimal`
    /// it has already been rounded.
    ///
    /// Rounding of the result will occur during the construction of the new
    /// `MonetaryAmount` value with respect to its `Currency`.
    public static func * (monetaryAmount: MonetaryAmount, coefficient: DynamicRoundedDecimal) -> MonetaryAmount {

        return MonetaryAmount(currency: monetaryAmount.currency, value: monetaryAmount.value * coefficient)
    }
    
    /// Multiplies a `MonetaryAmount` by a `Decimal` value.
    ///
    /// No rounding is done on the coefficient prior to the calculation.
    ///
    /// Rounding of the result will occur during the construction of the new
    /// `MonetaryAmount` value with respect to its `Currency`.
    public static func * (coefficient: Decimal, monetaryAmount: MonetaryAmount) -> MonetaryAmount {

        return monetaryAmount * coefficient
    }
    
    /// Multiplies a `MonetaryAmount` by an `Int` value.
    ///
    /// Rounding of the result will occur during the construction of the new
    /// `MonetaryAmount` value with respect to its `Currency`.
    public static func * (coefficient: Int, monetaryAmount: MonetaryAmount) -> MonetaryAmount {

        return monetaryAmount * coefficient
    }
    
    /// Multiplies a `MonetaryAmount` by an `DynamicRoundedDecimal` value.
    ///
    /// No rounding is done on the coefficient prior to the calculation - since it is a `DynamicRoundedDecimal`
    /// it has already been rounded.
    ///
    /// Rounding of the result will occur during the construction of the new
    /// `MonetaryAmount` value with respect to its `Currency`.
    public static func * (coefficient: DynamicRoundedDecimal, monetaryAmount: MonetaryAmount) -> MonetaryAmount {

        return monetaryAmount * coefficient
    }
}
