//
//  Currency+Generated.swift
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 16/09/2018.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import Foundation

// Important
//
// This file is generated by the Currencies Generator target. Please
// do not edit this file directly. The template for this file can be
// found as `Currencies.swift` in the `templates` directory from the 
// project root.
//
// To regenerate this file, in the root of the project, run the command:
//
//     cat currencies.csv | swift run CurrenciesGenerator > ./Sources/MonetaryAmount/Currencies+Generated.swift
//
// File last generated: 2019-09-13 20:38:50 +0000
public extension Currency {

    // MARK: Requesting Currencies
    
    /// Request a currency for a given _ISO 4217_ currency code.
    ///
    /// For example, to obtain the UK Pound:
    ///
    ///     let GBP = Currency.with(currencyCode: "GBP")
    ///
    /// - Parameters:
    ///    - currencyCode: The **ISO standard** currency code. e.g. _"USD"_ for US Dollars
    ///
    /// - Returns:
    ///     If a currency exists for the given `currencyCode` then a configured `Currency`
    ///     will be returned. If no currency exists then `nil` will be returned.
    ///
    static func with(currencyCode: String) -> Currency? {
        return currencyTable[currencyCode]
    }
    
    // MARK: All Currencies
    
    /// All standard `Currency` values defined by _ISO 4217_
    static let all: [Currency] = [
        AED,
        AFN,
        ALL,
        AMD,
        ANG,
        AOA,
        ARS,
        AUD,
        AWG,
        AZN,
        BAM,
        BBD,
        BDT,
        BGN,
        BHD,
        BIF,
        BMD,
        BND,
        BOB,
        BRL,
        BSD,
        BTN,
        BWP,
        BYN,
        BZD,
        CAD,
        CDF,
        CHF,
        CLP,
        CNY,
        COP,
        CRC,
        CUC,
        CUP,
        CVE,
        CZK,
        DJF,
        DKK,
        DOP,
        DZD,
        EGP,
        ERN,
        ETB,
        EUR,
        FJD,
        GBP,
        GEL,
        GHS,
        GIP,
        GMD,
        GNF,
        GTQ,
        GYD,
        HKD,
        HNL,
        HRK,
        HTG,
        HUF,
        IDR,
        ILS,
        INR,
        IQD,
        IRR,
        ISK,
        JMD,
        JOD,
        JPY,
        KES,
        KGS,
        KHR,
        KMF,
        KPW,
        KRW,
        KWD,
        KYD,
        KZT,
        LAK,
        LBP,
        LKR,
        LRD,
        LSL,
        LYD,
        MAD,
        MDL,
        MGA,
        MKD,
        MMK,
        MNT,
        MOP,
        MRO,
        MUR,
        MVR,
        MWK,
        MXN,
        MYR,
        MZN,
        NAD,
        NGN,
        NIO,
        NOK,
        NPR,
        NZD,
        OMR,
        PAB,
        PEN,
        PGK,
        PHP,
        PKR,
        PLN,
        PYG,
        QAR,
        RON,
        RSD,
        RUB,
        RWF,
        SAR,
        SBD,
        SCR,
        SDG,
        SEK,
        SGD,
        SHP,
        SLL,
        SOS,
        SRD,
        SSP,
        STD,
        SVC,
        SYP,
        SZL,
        THB,
        TJS,
        TMT,
        TND,
        TOP,
        TRY,
        TTD,
        TZS,
        UAH,
        UGX,
        USD,
        UYU,
        UZS,
        VEF,
        VND,
        VUV,
        WST,
        XAF,
        XCD,
        XOF,
        XPF,
        YER,
        ZAR,
        ZMW,
        ZWL,
    ]
        
    // MARK: Individual Currencies
    
    /// UAE Dirham (AED) with minor unit 2
    static let AED = Currency(name: "UAE Dirham", code: "AED", minorUnit: 2)
    
    /// Afghani (AFN) with minor unit 2
    static let AFN = Currency(name: "Afghani", code: "AFN", minorUnit: 2)
    
    /// Lek (ALL) with minor unit 2
    static let ALL = Currency(name: "Lek", code: "ALL", minorUnit: 2)
    
    /// Armenian Dram (AMD) with minor unit 2
    static let AMD = Currency(name: "Armenian Dram", code: "AMD", minorUnit: 2)
    
    /// Netherlands Antillean Guilder (ANG) with minor unit 2
    static let ANG = Currency(name: "Netherlands Antillean Guilder", code: "ANG", minorUnit: 2)
    
    /// Kwanza (AOA) with minor unit 2
    static let AOA = Currency(name: "Kwanza", code: "AOA", minorUnit: 2)
    
    /// Argentine Peso (ARS) with minor unit 2
    static let ARS = Currency(name: "Argentine Peso", code: "ARS", minorUnit: 2)
    
    /// Australian Dollar (AUD) with minor unit 2
    static let AUD = Currency(name: "Australian Dollar", code: "AUD", minorUnit: 2)
    
    /// Aruban Florin (AWG) with minor unit 2
    static let AWG = Currency(name: "Aruban Florin", code: "AWG", minorUnit: 2)
    
    /// Azerbaijan Manat (AZN) with minor unit 2
    static let AZN = Currency(name: "Azerbaijan Manat", code: "AZN", minorUnit: 2)
    
    /// Convertible Mark (BAM) with minor unit 2
    static let BAM = Currency(name: "Convertible Mark", code: "BAM", minorUnit: 2)
    
    /// Barbados Dollar (BBD) with minor unit 2
    static let BBD = Currency(name: "Barbados Dollar", code: "BBD", minorUnit: 2)
    
    /// Taka (BDT) with minor unit 2
    static let BDT = Currency(name: "Taka", code: "BDT", minorUnit: 2)
    
    /// Bulgarian Lev (BGN) with minor unit 2
    static let BGN = Currency(name: "Bulgarian Lev", code: "BGN", minorUnit: 2)
    
    /// Bahraini Dinar (BHD) with minor unit 3
    static let BHD = Currency(name: "Bahraini Dinar", code: "BHD", minorUnit: 3)
    
    /// Burundi Franc (BIF) with minor unit 0
    static let BIF = Currency(name: "Burundi Franc", code: "BIF", minorUnit: 0)
    
    /// Bermudian Dollar (BMD) with minor unit 2
    static let BMD = Currency(name: "Bermudian Dollar", code: "BMD", minorUnit: 2)
    
    /// Brunei Dollar (BND) with minor unit 2
    static let BND = Currency(name: "Brunei Dollar", code: "BND", minorUnit: 2)
    
    /// Boliviano (BOB) with minor unit 2
    static let BOB = Currency(name: "Boliviano", code: "BOB", minorUnit: 2)
    
    /// Brazilian Real (BRL) with minor unit 2
    static let BRL = Currency(name: "Brazilian Real", code: "BRL", minorUnit: 2)
    
    /// Bahamian Dollar (BSD) with minor unit 2
    static let BSD = Currency(name: "Bahamian Dollar", code: "BSD", minorUnit: 2)
    
    /// Ngultrum (BTN) with minor unit 2
    static let BTN = Currency(name: "Ngultrum", code: "BTN", minorUnit: 2)
    
    /// Pula (BWP) with minor unit 2
    static let BWP = Currency(name: "Pula", code: "BWP", minorUnit: 2)
    
    /// Belarusian Ruble (BYN) with minor unit 2
    static let BYN = Currency(name: "Belarusian Ruble", code: "BYN", minorUnit: 2)
    
    /// Belize Dollar (BZD) with minor unit 2
    static let BZD = Currency(name: "Belize Dollar", code: "BZD", minorUnit: 2)
    
    /// Canadian Dollar (CAD) with minor unit 2
    static let CAD = Currency(name: "Canadian Dollar", code: "CAD", minorUnit: 2)
    
    /// Congolese Franc (CDF) with minor unit 2
    static let CDF = Currency(name: "Congolese Franc", code: "CDF", minorUnit: 2)
    
    /// Swiss Franc (CHF) with minor unit 2
    static let CHF = Currency(name: "Swiss Franc", code: "CHF", minorUnit: 2)
    
    /// Chilean Peso (CLP) with minor unit 0
    static let CLP = Currency(name: "Chilean Peso", code: "CLP", minorUnit: 0)
    
    /// Yuan Renminbi (CNY) with minor unit 2
    static let CNY = Currency(name: "Yuan Renminbi", code: "CNY", minorUnit: 2)
    
    /// Colombian Peso (COP) with minor unit 2
    static let COP = Currency(name: "Colombian Peso", code: "COP", minorUnit: 2)
    
    /// Costa Rican Colon (CRC) with minor unit 2
    static let CRC = Currency(name: "Costa Rican Colon", code: "CRC", minorUnit: 2)
    
    /// Peso Convertible (CUC) with minor unit 2
    static let CUC = Currency(name: "Peso Convertible", code: "CUC", minorUnit: 2)
    
    /// Cuban Peso (CUP) with minor unit 2
    static let CUP = Currency(name: "Cuban Peso", code: "CUP", minorUnit: 2)
    
    /// Cabo Verde Escudo (CVE) with minor unit 2
    static let CVE = Currency(name: "Cabo Verde Escudo", code: "CVE", minorUnit: 2)
    
    /// Czech Koruna (CZK) with minor unit 2
    static let CZK = Currency(name: "Czech Koruna", code: "CZK", minorUnit: 2)
    
    /// Djibouti Franc (DJF) with minor unit 0
    static let DJF = Currency(name: "Djibouti Franc", code: "DJF", minorUnit: 0)
    
    /// Danish Krone (DKK) with minor unit 2
    static let DKK = Currency(name: "Danish Krone", code: "DKK", minorUnit: 2)
    
    /// Dominican Peso (DOP) with minor unit 2
    static let DOP = Currency(name: "Dominican Peso", code: "DOP", minorUnit: 2)
    
    /// Algerian Dinar (DZD) with minor unit 2
    static let DZD = Currency(name: "Algerian Dinar", code: "DZD", minorUnit: 2)
    
    /// Egyptian Pound (EGP) with minor unit 2
    static let EGP = Currency(name: "Egyptian Pound", code: "EGP", minorUnit: 2)
    
    /// Nakfa (ERN) with minor unit 2
    static let ERN = Currency(name: "Nakfa", code: "ERN", minorUnit: 2)
    
    /// Ethiopian Birr (ETB) with minor unit 2
    static let ETB = Currency(name: "Ethiopian Birr", code: "ETB", minorUnit: 2)
    
    /// Euro (EUR) with minor unit 2
    static let EUR = Currency(name: "Euro", code: "EUR", minorUnit: 2)
    
    /// Fiji Dollar (FJD) with minor unit 2
    static let FJD = Currency(name: "Fiji Dollar", code: "FJD", minorUnit: 2)
    
    /// Pound Sterling (GBP) with minor unit 2
    static let GBP = Currency(name: "Pound Sterling", code: "GBP", minorUnit: 2)
    
    /// Lari (GEL) with minor unit 2
    static let GEL = Currency(name: "Lari", code: "GEL", minorUnit: 2)
    
    /// Ghana Cedi (GHS) with minor unit 2
    static let GHS = Currency(name: "Ghana Cedi", code: "GHS", minorUnit: 2)
    
    /// Gibraltar Pound (GIP) with minor unit 2
    static let GIP = Currency(name: "Gibraltar Pound", code: "GIP", minorUnit: 2)
    
    /// Dalasi (GMD) with minor unit 2
    static let GMD = Currency(name: "Dalasi", code: "GMD", minorUnit: 2)
    
    /// Guinean Franc (GNF) with minor unit 0
    static let GNF = Currency(name: "Guinean Franc", code: "GNF", minorUnit: 0)
    
    /// Quetzal (GTQ) with minor unit 2
    static let GTQ = Currency(name: "Quetzal", code: "GTQ", minorUnit: 2)
    
    /// Guyana Dollar (GYD) with minor unit 2
    static let GYD = Currency(name: "Guyana Dollar", code: "GYD", minorUnit: 2)
    
    /// Hong Kong Dollar (HKD) with minor unit 2
    static let HKD = Currency(name: "Hong Kong Dollar", code: "HKD", minorUnit: 2)
    
    /// Lempira (HNL) with minor unit 2
    static let HNL = Currency(name: "Lempira", code: "HNL", minorUnit: 2)
    
    /// Kuna (HRK) with minor unit 2
    static let HRK = Currency(name: "Kuna", code: "HRK", minorUnit: 2)
    
    /// Gourde (HTG) with minor unit 2
    static let HTG = Currency(name: "Gourde", code: "HTG", minorUnit: 2)
    
    /// Forint (HUF) with minor unit 2
    static let HUF = Currency(name: "Forint", code: "HUF", minorUnit: 2)
    
    /// Rupiah (IDR) with minor unit 2
    static let IDR = Currency(name: "Rupiah", code: "IDR", minorUnit: 2)
    
    /// New Israeli Sheqel (ILS) with minor unit 2
    static let ILS = Currency(name: "New Israeli Sheqel", code: "ILS", minorUnit: 2)
    
    /// Indian Rupee (INR) with minor unit 2
    static let INR = Currency(name: "Indian Rupee", code: "INR", minorUnit: 2)
    
    /// Iraqi Dinar (IQD) with minor unit 3
    static let IQD = Currency(name: "Iraqi Dinar", code: "IQD", minorUnit: 3)
    
    /// Iranian Rial (IRR) with minor unit 2
    static let IRR = Currency(name: "Iranian Rial", code: "IRR", minorUnit: 2)
    
    /// Iceland Krona (ISK) with minor unit 0
    static let ISK = Currency(name: "Iceland Krona", code: "ISK", minorUnit: 0)
    
    /// Jamaican Dollar (JMD) with minor unit 2
    static let JMD = Currency(name: "Jamaican Dollar", code: "JMD", minorUnit: 2)
    
    /// Jordanian Dinar (JOD) with minor unit 3
    static let JOD = Currency(name: "Jordanian Dinar", code: "JOD", minorUnit: 3)
    
    /// Yen (JPY) with minor unit 0
    static let JPY = Currency(name: "Yen", code: "JPY", minorUnit: 0)
    
    /// Kenyan Shilling (KES) with minor unit 2
    static let KES = Currency(name: "Kenyan Shilling", code: "KES", minorUnit: 2)
    
    /// Som (KGS) with minor unit 2
    static let KGS = Currency(name: "Som", code: "KGS", minorUnit: 2)
    
    /// Riel (KHR) with minor unit 2
    static let KHR = Currency(name: "Riel", code: "KHR", minorUnit: 2)
    
    /// Comorian Franc (KMF) with minor unit 0
    static let KMF = Currency(name: "Comorian Franc", code: "KMF", minorUnit: 0)
    
    /// North Korean Won (KPW) with minor unit 2
    static let KPW = Currency(name: "North Korean Won", code: "KPW", minorUnit: 2)
    
    /// Won (KRW) with minor unit 0
    static let KRW = Currency(name: "Won", code: "KRW", minorUnit: 0)
    
    /// Kuwaiti Dinar (KWD) with minor unit 3
    static let KWD = Currency(name: "Kuwaiti Dinar", code: "KWD", minorUnit: 3)
    
    /// Cayman Islands Dollar (KYD) with minor unit 2
    static let KYD = Currency(name: "Cayman Islands Dollar", code: "KYD", minorUnit: 2)
    
    /// Tenge (KZT) with minor unit 2
    static let KZT = Currency(name: "Tenge", code: "KZT", minorUnit: 2)
    
    /// Lao Kip (LAK) with minor unit 2
    static let LAK = Currency(name: "Lao Kip", code: "LAK", minorUnit: 2)
    
    /// Lebanese Pound (LBP) with minor unit 2
    static let LBP = Currency(name: "Lebanese Pound", code: "LBP", minorUnit: 2)
    
    /// Sri Lanka Rupee (LKR) with minor unit 2
    static let LKR = Currency(name: "Sri Lanka Rupee", code: "LKR", minorUnit: 2)
    
    /// Liberian Dollar (LRD) with minor unit 2
    static let LRD = Currency(name: "Liberian Dollar", code: "LRD", minorUnit: 2)
    
    /// Loti (LSL) with minor unit 2
    static let LSL = Currency(name: "Loti", code: "LSL", minorUnit: 2)
    
    /// Libyan Dinar (LYD) with minor unit 3
    static let LYD = Currency(name: "Libyan Dinar", code: "LYD", minorUnit: 3)
    
    /// Moroccan Dirham (MAD) with minor unit 2
    static let MAD = Currency(name: "Moroccan Dirham", code: "MAD", minorUnit: 2)
    
    /// Moldovan Leu (MDL) with minor unit 2
    static let MDL = Currency(name: "Moldovan Leu", code: "MDL", minorUnit: 2)
    
    /// Malagasy Ariary (MGA) with minor unit 2
    static let MGA = Currency(name: "Malagasy Ariary", code: "MGA", minorUnit: 2)
    
    /// Denar (MKD) with minor unit 2
    static let MKD = Currency(name: "Denar", code: "MKD", minorUnit: 2)
    
    /// Kyat (MMK) with minor unit 2
    static let MMK = Currency(name: "Kyat", code: "MMK", minorUnit: 2)
    
    /// Tugrik (MNT) with minor unit 2
    static let MNT = Currency(name: "Tugrik", code: "MNT", minorUnit: 2)
    
    /// Pataca (MOP) with minor unit 2
    static let MOP = Currency(name: "Pataca", code: "MOP", minorUnit: 2)
    
    /// Ouguiya (MRO) with minor unit 2
    static let MRO = Currency(name: "Ouguiya", code: "MRO", minorUnit: 2)
    
    /// Mauritius Rupee (MUR) with minor unit 2
    static let MUR = Currency(name: "Mauritius Rupee", code: "MUR", minorUnit: 2)
    
    /// Rufiyaa (MVR) with minor unit 2
    static let MVR = Currency(name: "Rufiyaa", code: "MVR", minorUnit: 2)
    
    /// Malawi Kwacha (MWK) with minor unit 2
    static let MWK = Currency(name: "Malawi Kwacha", code: "MWK", minorUnit: 2)
    
    /// Mexican Peso (MXN) with minor unit 2
    static let MXN = Currency(name: "Mexican Peso", code: "MXN", minorUnit: 2)
    
    /// Malaysian Ringgit (MYR) with minor unit 2
    static let MYR = Currency(name: "Malaysian Ringgit", code: "MYR", minorUnit: 2)
    
    /// Mozambique Metical (MZN) with minor unit 2
    static let MZN = Currency(name: "Mozambique Metical", code: "MZN", minorUnit: 2)
    
    /// Namibia Dollar (NAD) with minor unit 2
    static let NAD = Currency(name: "Namibia Dollar", code: "NAD", minorUnit: 2)
    
    /// Naira (NGN) with minor unit 2
    static let NGN = Currency(name: "Naira", code: "NGN", minorUnit: 2)
    
    /// Cordoba Oro (NIO) with minor unit 2
    static let NIO = Currency(name: "Cordoba Oro", code: "NIO", minorUnit: 2)
    
    /// Norwegian Krone (NOK) with minor unit 2
    static let NOK = Currency(name: "Norwegian Krone", code: "NOK", minorUnit: 2)
    
    /// Nepalese Rupee (NPR) with minor unit 2
    static let NPR = Currency(name: "Nepalese Rupee", code: "NPR", minorUnit: 2)
    
    /// New Zealand Dollar (NZD) with minor unit 2
    static let NZD = Currency(name: "New Zealand Dollar", code: "NZD", minorUnit: 2)
    
    /// Rial Omani (OMR) with minor unit 3
    static let OMR = Currency(name: "Rial Omani", code: "OMR", minorUnit: 3)
    
    /// Balboa (PAB) with minor unit 2
    static let PAB = Currency(name: "Balboa", code: "PAB", minorUnit: 2)
    
    /// Sol (PEN) with minor unit 2
    static let PEN = Currency(name: "Sol", code: "PEN", minorUnit: 2)
    
    /// Kina (PGK) with minor unit 2
    static let PGK = Currency(name: "Kina", code: "PGK", minorUnit: 2)
    
    /// Philippine Piso (PHP) with minor unit 2
    static let PHP = Currency(name: "Philippine Piso", code: "PHP", minorUnit: 2)
    
    /// Pakistan Rupee (PKR) with minor unit 2
    static let PKR = Currency(name: "Pakistan Rupee", code: "PKR", minorUnit: 2)
    
    /// Zloty (PLN) with minor unit 2
    static let PLN = Currency(name: "Zloty", code: "PLN", minorUnit: 2)
    
    /// Guarani (PYG) with minor unit 0
    static let PYG = Currency(name: "Guarani", code: "PYG", minorUnit: 0)
    
    /// Qatari Rial (QAR) with minor unit 2
    static let QAR = Currency(name: "Qatari Rial", code: "QAR", minorUnit: 2)
    
    /// Romanian Leu (RON) with minor unit 2
    static let RON = Currency(name: "Romanian Leu", code: "RON", minorUnit: 2)
    
    /// Serbian Dinar (RSD) with minor unit 2
    static let RSD = Currency(name: "Serbian Dinar", code: "RSD", minorUnit: 2)
    
    /// Russian Ruble (RUB) with minor unit 2
    static let RUB = Currency(name: "Russian Ruble", code: "RUB", minorUnit: 2)
    
    /// Rwanda Franc (RWF) with minor unit 0
    static let RWF = Currency(name: "Rwanda Franc", code: "RWF", minorUnit: 0)
    
    /// Saudi Riyal (SAR) with minor unit 2
    static let SAR = Currency(name: "Saudi Riyal", code: "SAR", minorUnit: 2)
    
    /// Solomon Islands Dollar (SBD) with minor unit 2
    static let SBD = Currency(name: "Solomon Islands Dollar", code: "SBD", minorUnit: 2)
    
    /// Seychelles Rupee (SCR) with minor unit 2
    static let SCR = Currency(name: "Seychelles Rupee", code: "SCR", minorUnit: 2)
    
    /// Sudanese Pound (SDG) with minor unit 2
    static let SDG = Currency(name: "Sudanese Pound", code: "SDG", minorUnit: 2)
    
    /// Swedish Krona (SEK) with minor unit 2
    static let SEK = Currency(name: "Swedish Krona", code: "SEK", minorUnit: 2)
    
    /// Singapore Dollar (SGD) with minor unit 2
    static let SGD = Currency(name: "Singapore Dollar", code: "SGD", minorUnit: 2)
    
    /// Saint Helena Pound (SHP) with minor unit 2
    static let SHP = Currency(name: "Saint Helena Pound", code: "SHP", minorUnit: 2)
    
    /// Leone (SLL) with minor unit 2
    static let SLL = Currency(name: "Leone", code: "SLL", minorUnit: 2)
    
    /// Somali Shilling (SOS) with minor unit 2
    static let SOS = Currency(name: "Somali Shilling", code: "SOS", minorUnit: 2)
    
    /// Surinam Dollar (SRD) with minor unit 2
    static let SRD = Currency(name: "Surinam Dollar", code: "SRD", minorUnit: 2)
    
    /// South Sudanese Pound (SSP) with minor unit 2
    static let SSP = Currency(name: "South Sudanese Pound", code: "SSP", minorUnit: 2)
    
    /// Dobra (STD) with minor unit 2
    static let STD = Currency(name: "Dobra", code: "STD", minorUnit: 2)
    
    /// El Salvador Colon (SVC) with minor unit 2
    static let SVC = Currency(name: "El Salvador Colon", code: "SVC", minorUnit: 2)
    
    /// Syrian Pound (SYP) with minor unit 2
    static let SYP = Currency(name: "Syrian Pound", code: "SYP", minorUnit: 2)
    
    /// Lilangeni (SZL) with minor unit 2
    static let SZL = Currency(name: "Lilangeni", code: "SZL", minorUnit: 2)
    
    /// Baht (THB) with minor unit 2
    static let THB = Currency(name: "Baht", code: "THB", minorUnit: 2)
    
    /// Somoni (TJS) with minor unit 2
    static let TJS = Currency(name: "Somoni", code: "TJS", minorUnit: 2)
    
    /// Turkmenistan New Manat (TMT) with minor unit 2
    static let TMT = Currency(name: "Turkmenistan New Manat", code: "TMT", minorUnit: 2)
    
    /// Tunisian Dinar (TND) with minor unit 3
    static let TND = Currency(name: "Tunisian Dinar", code: "TND", minorUnit: 3)
    
    /// Pa’anga (TOP) with minor unit 2
    static let TOP = Currency(name: "Pa’anga", code: "TOP", minorUnit: 2)
    
    /// Turkish Lira (TRY) with minor unit 2
    static let TRY = Currency(name: "Turkish Lira", code: "TRY", minorUnit: 2)
    
    /// Trinidad and Tobago Dollar (TTD) with minor unit 2
    static let TTD = Currency(name: "Trinidad and Tobago Dollar", code: "TTD", minorUnit: 2)
    
    /// Tanzanian Shilling (TZS) with minor unit 2
    static let TZS = Currency(name: "Tanzanian Shilling", code: "TZS", minorUnit: 2)
    
    /// Hryvnia (UAH) with minor unit 2
    static let UAH = Currency(name: "Hryvnia", code: "UAH", minorUnit: 2)
    
    /// Uganda Shilling (UGX) with minor unit 0
    static let UGX = Currency(name: "Uganda Shilling", code: "UGX", minorUnit: 0)
    
    /// US Dollar (USD) with minor unit 2
    static let USD = Currency(name: "US Dollar", code: "USD", minorUnit: 2)
    
    /// Peso Uruguayo (UYU) with minor unit 2
    static let UYU = Currency(name: "Peso Uruguayo", code: "UYU", minorUnit: 2)
    
    /// Uzbekistan Sum (UZS) with minor unit 2
    static let UZS = Currency(name: "Uzbekistan Sum", code: "UZS", minorUnit: 2)
    
    /// Bolívar (VEF) with minor unit 2
    static let VEF = Currency(name: "Bolívar", code: "VEF", minorUnit: 2)
    
    /// Dong (VND) with minor unit 0
    static let VND = Currency(name: "Dong", code: "VND", minorUnit: 0)
    
    /// Vatu (VUV) with minor unit 0
    static let VUV = Currency(name: "Vatu", code: "VUV", minorUnit: 0)
    
    /// Tala (WST) with minor unit 2
    static let WST = Currency(name: "Tala", code: "WST", minorUnit: 2)
    
    /// CFA Franc BEAC (XAF) with minor unit 0
    static let XAF = Currency(name: "CFA Franc BEAC", code: "XAF", minorUnit: 0)
    
    /// East Caribbean Dollar (XCD) with minor unit 2
    static let XCD = Currency(name: "East Caribbean Dollar", code: "XCD", minorUnit: 2)
    
    /// CFA Franc BCEAO (XOF) with minor unit 0
    static let XOF = Currency(name: "CFA Franc BCEAO", code: "XOF", minorUnit: 0)
    
    /// CFP Franc (XPF) with minor unit 0
    static let XPF = Currency(name: "CFP Franc", code: "XPF", minorUnit: 0)
    
    /// Yemeni Rial (YER) with minor unit 2
    static let YER = Currency(name: "Yemeni Rial", code: "YER", minorUnit: 2)
    
    /// Rand (ZAR) with minor unit 2
    static let ZAR = Currency(name: "Rand", code: "ZAR", minorUnit: 2)
    
    /// Zambian Kwacha (ZMW) with minor unit 2
    static let ZMW = Currency(name: "Zambian Kwacha", code: "ZMW", minorUnit: 2)
    
    /// Zimbabwe Dollar (ZWL) with minor unit 2
    static let ZWL = Currency(name: "Zimbabwe Dollar", code: "ZWL", minorUnit: 2)
    
    
    static private let currencyTable: [String: Currency] = [
        AED.code: AED, 
        AFN.code: AFN, 
        ALL.code: ALL, 
        AMD.code: AMD, 
        ANG.code: ANG, 
        AOA.code: AOA, 
        ARS.code: ARS, 
        AUD.code: AUD, 
        AWG.code: AWG, 
        AZN.code: AZN, 
        BAM.code: BAM, 
        BBD.code: BBD, 
        BDT.code: BDT, 
        BGN.code: BGN, 
        BHD.code: BHD, 
        BIF.code: BIF, 
        BMD.code: BMD, 
        BND.code: BND, 
        BOB.code: BOB, 
        BRL.code: BRL, 
        BSD.code: BSD, 
        BTN.code: BTN, 
        BWP.code: BWP, 
        BYN.code: BYN, 
        BZD.code: BZD, 
        CAD.code: CAD, 
        CDF.code: CDF, 
        CHF.code: CHF, 
        CLP.code: CLP, 
        CNY.code: CNY, 
        COP.code: COP, 
        CRC.code: CRC, 
        CUC.code: CUC, 
        CUP.code: CUP, 
        CVE.code: CVE, 
        CZK.code: CZK, 
        DJF.code: DJF, 
        DKK.code: DKK, 
        DOP.code: DOP, 
        DZD.code: DZD, 
        EGP.code: EGP, 
        ERN.code: ERN, 
        ETB.code: ETB, 
        EUR.code: EUR, 
        FJD.code: FJD, 
        GBP.code: GBP, 
        GEL.code: GEL, 
        GHS.code: GHS, 
        GIP.code: GIP, 
        GMD.code: GMD, 
        GNF.code: GNF, 
        GTQ.code: GTQ, 
        GYD.code: GYD, 
        HKD.code: HKD, 
        HNL.code: HNL, 
        HRK.code: HRK, 
        HTG.code: HTG, 
        HUF.code: HUF, 
        IDR.code: IDR, 
        ILS.code: ILS, 
        INR.code: INR, 
        IQD.code: IQD, 
        IRR.code: IRR, 
        ISK.code: ISK, 
        JMD.code: JMD, 
        JOD.code: JOD, 
        JPY.code: JPY, 
        KES.code: KES, 
        KGS.code: KGS, 
        KHR.code: KHR, 
        KMF.code: KMF, 
        KPW.code: KPW, 
        KRW.code: KRW, 
        KWD.code: KWD, 
        KYD.code: KYD, 
        KZT.code: KZT, 
        LAK.code: LAK, 
        LBP.code: LBP, 
        LKR.code: LKR, 
        LRD.code: LRD, 
        LSL.code: LSL, 
        LYD.code: LYD, 
        MAD.code: MAD, 
        MDL.code: MDL, 
        MGA.code: MGA, 
        MKD.code: MKD, 
        MMK.code: MMK, 
        MNT.code: MNT, 
        MOP.code: MOP, 
        MRO.code: MRO, 
        MUR.code: MUR, 
        MVR.code: MVR, 
        MWK.code: MWK, 
        MXN.code: MXN, 
        MYR.code: MYR, 
        MZN.code: MZN, 
        NAD.code: NAD, 
        NGN.code: NGN, 
        NIO.code: NIO, 
        NOK.code: NOK, 
        NPR.code: NPR, 
        NZD.code: NZD, 
        OMR.code: OMR, 
        PAB.code: PAB, 
        PEN.code: PEN, 
        PGK.code: PGK, 
        PHP.code: PHP, 
        PKR.code: PKR, 
        PLN.code: PLN, 
        PYG.code: PYG, 
        QAR.code: QAR, 
        RON.code: RON, 
        RSD.code: RSD, 
        RUB.code: RUB, 
        RWF.code: RWF, 
        SAR.code: SAR, 
        SBD.code: SBD, 
        SCR.code: SCR, 
        SDG.code: SDG, 
        SEK.code: SEK, 
        SGD.code: SGD, 
        SHP.code: SHP, 
        SLL.code: SLL, 
        SOS.code: SOS, 
        SRD.code: SRD, 
        SSP.code: SSP, 
        STD.code: STD, 
        SVC.code: SVC, 
        SYP.code: SYP, 
        SZL.code: SZL, 
        THB.code: THB, 
        TJS.code: TJS, 
        TMT.code: TMT, 
        TND.code: TND, 
        TOP.code: TOP, 
        TRY.code: TRY, 
        TTD.code: TTD, 
        TZS.code: TZS, 
        UAH.code: UAH, 
        UGX.code: UGX, 
        USD.code: USD, 
        UYU.code: UYU, 
        UZS.code: UZS, 
        VEF.code: VEF, 
        VND.code: VND, 
        VUV.code: VUV, 
        WST.code: WST, 
        XAF.code: XAF, 
        XCD.code: XCD, 
        XOF.code: XOF, 
        XPF.code: XPF, 
        YER.code: YER, 
        ZAR.code: ZAR, 
        ZMW.code: ZMW, 
        ZWL.code: ZWL, 
    ]
}
