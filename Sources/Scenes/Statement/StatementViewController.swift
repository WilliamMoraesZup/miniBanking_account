//
//  StatementViewController.swift
//  miniBanking_account
//
//  Created by Romulo Basso Krebs on 26/10/21.
//



import UIKit
import miniBanking_core

protocol StatementDisplayerProtocol: AnyObject {
    
}

final class StatementViewController: ViewController,
                                       StatementDisplayerProtocol {
    
   
    private var businessHandler: StatementBusinessHandlerProtocol?
    
    func setup(businessHandler: StatementBusinessHandlerProtocol) {
        self.businessHandler = businessHandler
    }
    
   

}
