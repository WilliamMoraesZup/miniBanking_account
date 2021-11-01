//
//  DetailsPaymentViewController.swift
//  miniBanking_account
//
//  Created by Caico Saler Oliveira Costa on 01/11/21.
//

import UIKit

class DetailsPaymentViewController: UIViewController {

    
    @IBOutlet weak var lbBarNumber: UILabel!
    @IBOutlet weak var lbClient: UILabel!
    @IBOutlet weak var lbTotalToPay: UILabel!
    @IBOutlet weak var lbDueDate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbBarNumber.text = PaymentDetails.shared.barNumber
        lbClient.text = PaymentDetails.shared.client
        lbTotalToPay.text = PaymentDetails.shared.getFormatedValue(of: PaymentDetails.shared.totalToPay, withCurrency: "R$ ")
        lbDueDate.text = PaymentDetails.shared.dueDate
    }

}
