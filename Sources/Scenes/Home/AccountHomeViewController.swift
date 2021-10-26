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
    
    @IBAction func didTapAccountButton(_ sender: UIButton) {
        print("oi")
        guard let navigationController = navigationController else { return }
        StatementRouter.routeToStatement(on: navigationController)
        
        
    }

}
