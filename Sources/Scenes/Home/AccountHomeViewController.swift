//
//  AccountHomeViewController.swift
//  miniBanking_account
//
//  Created by Bruno Vieira on 23/10/21.
//

import UIKit
import miniBanking_core

protocol AccountHomeDisplayerProtocol: AnyObject {
    
}

final class AccountHomeViewController: ViewController,
                                       AccountHomeDisplayerProtocol {
    
    private var businessHandler: AccountHomeBusinessHandlerProtocol?
    
    func setup(businessHandler: AccountHomeBusinessHandlerProtocol) {
        self.businessHandler = businessHandler
    }

}
