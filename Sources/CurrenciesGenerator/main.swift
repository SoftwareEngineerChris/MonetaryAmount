//
//  main.m
//  MonetaryAmount
//
//  Created by Chris Hargreaves on 10/09/2019.
//  Copyright © 2019 Software Engineering Limited. All rights reserved.
//

import Foundation
import Stencil

private struct CurrencyGenerator {
    
    static func main() {
        // Read all stdin up-front to read CSV data
        guard let inputCSV = String(bytes: FileHandle.standardInput.readDataToEndOfFile(), encoding: .utf8) else {
            reportError("Unable to read input. Please pipe into stdin.")
        }
        
        // Pull the currencies out of the CSV data
        let currencies = CurrencyGenerator.currencyData(csvCurrencyData: inputCSV)
        
        // Create the Stencil template context
        let context = [ "currencies": currencies, "generatedDate": Date() ] as [String : Any]
        
        // Load the Stencil template file from disk
        let environment = Environment(loader: FileSystemLoader(paths: ["templates/"]))
        
        // Render the template with the template context
        guard let rendered = try? environment.renderTemplate(name: "Currencies.swift", context: context) else {
            reportError("Unable to read Currencies.swift template file")
        }
        
        // Pump the rendered string back out to the stdout
        FileHandle.standardOutput.write(rendered.data(using: .utf8)!)
    }
    
    private enum CurrencyDataColumn: Int, CaseIterable {
        
        case alphaCurrencyCode
        case minorUnit
        case currencyName
    }
    
    private struct CurrencyData: Equatable, Hashable {
        
        let currencyName: String
        let alphaCurrencyCode: String
        let minorUnit: Int
    }
    
    private static func currencyData(csvCurrencyData: String) -> [CurrencyData] {
        
        let currencyData = csvCurrencyData
            .components(separatedBy: "\n")
            .map { $0.components(separatedBy: ",") }
            .compactMap { rawData -> CurrencyData? in
                
                guard rawData.count == CurrencyDataColumn.allCases.count else {
                    return nil
                }
                
                return CurrencyData(
                    currencyName: rawData[CurrencyDataColumn.currencyName.rawValue],
                    alphaCurrencyCode: rawData[CurrencyDataColumn.alphaCurrencyCode.rawValue],
                    minorUnit: Int(rawData[CurrencyDataColumn.minorUnit.rawValue])!
                )
            }
        
        return Array(Set(currencyData))
            .sorted { $0.alphaCurrencyCode < $1.alphaCurrencyCode }
    }
    
    private static func reportError(_ message: String) -> Never {
        FileHandle.standardError.write(message.data(using: .utf8)!)
        exit(-1)
    }
}

// MARK: Program Start

CurrencyGenerator.main()
