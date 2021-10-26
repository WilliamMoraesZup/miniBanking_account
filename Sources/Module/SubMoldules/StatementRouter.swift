//
//  StatementRouter.swift
//  miniBanking_account
//
//  Created by Romulo Basso Krebs on 26/10/21.
//

import UIKit

struct StatementRouter {
    
    static func routeToStatement(on navigationController: UINavigationController) {
        StatementSubModule.start(on: navigationController)
    }
    
        
    
}
