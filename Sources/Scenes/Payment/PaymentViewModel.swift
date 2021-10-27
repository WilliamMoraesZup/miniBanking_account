//
//  PaymentModel.swift
//  miniBanking_account
//
//  Created by Caico Saler Oliveira Costa on 26/10/21.
//

import Foundation
protocol PaymentBusinessHandlerProtocol: AnyObject {

    
    
}

final class PaymentViewModel: PaymentBusinessHandlerProtocol {
    
    private weak var displayer: PaymentDisplayerProtocol?
    
    func setup(displayer: PaymentDisplayerProtocol) {
        self.displayer = displayer
    }
    
}
