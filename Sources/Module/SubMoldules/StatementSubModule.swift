//
//  StatementSubModule.swift
//  miniBanking_account
//
//  Created by Romulo Basso Krebs on 26/10/21.
//

import Foundation


public final class StatementSubModule {
    
    public static func start(on navigationController: UINavigationController) {
        let storyboard = UIStoryboard(
            name: "Statement",
            bundle: Bundle.init(for: self)
        )
        guard let initialViewController = storyboard.instantiateInitialViewController() as? StatementViewController else { exit(0) }
        let businessHandler = StatementViewModel()
        businessHandler.setup(displayer: initialViewController)
        initialViewController.setup(businessHandler: businessHandler)
        navigationController.pushViewController(
            initialViewController,
            animated: true
        )
    }
    
}
