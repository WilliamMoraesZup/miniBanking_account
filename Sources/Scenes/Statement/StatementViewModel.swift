//
//  StatementViewModel.swift
//  miniBanking_account
//
//  Created by Romulo Basso Krebs on 26/10/21.
//

import Foundation

protocol StatementBusinessHandlerProtocol: AnyObject {

    
    
}

final class StatementViewModel: StatementBusinessHandlerProtocol {
    
    private weak var displayer: StatementDisplayerProtocol?
    
    func setup(displayer: StatementDisplayerProtocol) {
        self.displayer = displayer
    }
    
}
