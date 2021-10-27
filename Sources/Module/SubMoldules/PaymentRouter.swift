//
//  PaymentRouter.swift
//  miniBanking_account
//
//  Created by Caico Saler Oliveira Costa on 26/10/21.
//

import UIKit

struct PaymentRouter {
    
    static func routeToPayment(on navigationController: UINavigationController) {
        PaymentSubModule.start(on: navigationController)
    }
    
        
    
}
