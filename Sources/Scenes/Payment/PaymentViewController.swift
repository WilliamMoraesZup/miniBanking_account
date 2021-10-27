//
//  PaymentController.swift
//  miniBanking_account
//
//  Created by Caico Saler Oliveira Costa on 26/10/21.
//

import UIKit

import miniBanking_core

protocol PaymentDisplayerProtocol: AnyObject {
    
}


class PaymentViewController: UIViewController,
                             PaymentDisplayerProtocol {
    
    private var businessHandler: PaymentBusinessHandlerProtocol?
    
    func setup(businessHandler: PaymentBusinessHandlerProtocol) {
        self.businessHandler = businessHandler
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

