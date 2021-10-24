//
//  AccountHomeViewModel.swift
//  miniBanking_account
//
//  Created by Bruno Vieira on 23/10/21.
//

import Foundation

protocol AccountHomeBusinessHandlerProtocol: AnyObject {

    
    
}

final class AccountHomeViewModel: AccountHomeBusinessHandlerProtocol {
    
    private weak var displayer: AccountHomeDisplayerProtocol?
    
    func setup(displayer: AccountHomeDisplayerProtocol) {
        self.displayer = displayer
    }
    
}
