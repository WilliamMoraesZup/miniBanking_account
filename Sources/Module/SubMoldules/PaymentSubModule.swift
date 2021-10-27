//
//  PaymentSubModule.swift
//  miniBanking_account
//
//  Created by Caico Saler Oliveira Costa on 26/10/21.
//

import Foundation


public final class PaymentSubModule {
    
    public static func start(on navigationController: UINavigationController) {
        let storyboard = UIStoryboard(
            name: "Payment",
            bundle: Bundle.init(for: self)
        )
        guard let initialViewController = storyboard.instantiateInitialViewController() as? PaymentViewController else { exit(0) }
        let businessHandler = PaymentViewModel()
        businessHandler.setup(displayer: initialViewController)
        initialViewController.setup(businessHandler: businessHandler)
        navigationController.pushViewController(
            initialViewController,
            animated: true
        )
    }
    
}
