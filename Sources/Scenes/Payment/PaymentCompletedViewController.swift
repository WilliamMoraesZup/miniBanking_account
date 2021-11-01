//
//  PaymentCompletedViewController.swift
//  miniBanking_account
//
//  Created by Caico Saler Oliveira Costa on 01/11/21.
//

import UIKit

class PaymentCompletedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btOk(_ sender: UIButton) {
        let acountHome = self.storyboard?.instantiateViewController(withIdentifier: "AccountHomeViewController") as! AccountHomeViewController
        self.navigationController?.pushViewController(acountHome, animated: true)
    }
    
}
