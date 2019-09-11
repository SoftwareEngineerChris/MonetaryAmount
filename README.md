# MonetaryAmount

A Swift representation of money / monetary amounts and _ISO 4217_ currency designations. Supports manipulation
and combination of monetary amounts of a single currency or multiple currencies.

Handles minor units (the exponent, e.g. cents for USD) for each currency as specified in the ISO 4217 standard.
Simple manipulation includes consolidating / combining amounts.

`MonetaryAmount` values that have the _same_ `Currency` will be added together, `MonetaryAmount` values with 
_unique_ `Currency` values will be added to the result on their own.

### Usage Example

```swift
let moneyA = 12.00.in(.USD)
let moneyB = 18.00.in(.USD)
let moneyC = 6.00.in(.GBP)

// result would equal [30.00.in(.USD), 6.00.in(.GBP)]
let result = [moneyA, moneyB, moneyC].consolidating(moneyB)
```

The underlying value for the amount is represented by a `DynamicRoundedDecimal` which
itself uses the Swift `Decimal` type. `DynamicRoundedDecimal` handles rounding internally
as declared by the given currency's `minorUnit`.

### Construction

```swift
// moneyA and moneyB are equal and represent US$28.53
let moneyA = MonetaryAmount(currency: Currency.USD, value: Decimal(string: "28.529372")!)
let moneyB = 28.53.in(.USD)
```

#### Note
`MonetaryAmount` does not do any FX or conversion of currencies, it keeps each individual
currency subtotal separate.

#### See Also
   [Wikipedia Entry for ISO 4217](https://en.wikipedia.org/wiki/ISO_4217)

