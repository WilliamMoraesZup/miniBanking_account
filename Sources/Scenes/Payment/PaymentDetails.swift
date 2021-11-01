//
//  PaymentDetailsSingleton.swift
//  miniBanking_account
//
//  Created by Caico Saler Oliveira Costa on 01/11/21.
//

import Foundation

class PaymentDetails {
    
    static let shared = PaymentDetails()
    let formatter = NumberFormatter()
    
    var barNumber = ""
    var client = ""
    var totalToPay = 0.0
    var dueDate = ""
    
    func getFormatedValue(of value: Double, withCurrency currency: String) -> String {
            formatter.numberStyle = .currency
            formatter.currencySymbol = currency
            formatter.alwaysShowsDecimalSeparator = true
            return formatter.string(for: value)!
    }
    
    
    private init(){
        formatter.usesGroupingSeparator = true
    }
}
