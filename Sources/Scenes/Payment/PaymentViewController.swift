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
    
    
    @IBOutlet weak var tfBarNumber: UITextField!
    
    func setup(businessHandler: PaymentBusinessHandlerProtocol) {
        self.businessHandler = businessHandler
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btContinue(_ sender: UIButton) {
        guard let barNumber = tfBarNumber.text else {return}
        PaymentDetails.shared.barNumber = barNumber
        barCodeReading()
    }
    
    func barCodeReading(){
        PaymentDetails.shared.client = "Caico Costa"
        PaymentDetails.shared.dueDate = "05/12/2021"
        PaymentDetails.shared.totalToPay = 150.45
    }
}

