//
//  AccountRouter.swift
//  miniBanking_account
//
//  Created by Bruno Vieira on 23/10/21.
//

import UIKit

struct AccountRouter {
    
    static func routeToStatement(on navigationController: UINavigationController) {
        StatementSubModule.start(on: navigationController)
    }
    
    static func routeToDeposit(on navigationController: UINavigationController) {
        //StatementSubModule.start(on: navigationController)
    }
    
    static func routeTobankSlip(on navigationController: UINavigationController) {
        //StatementSubModule.start(on: navigationController)
    }
    
    
    
    
    
}
