//
//  AccountModule.swift
//  miniBanking_account
//
//  Created by Bruno Vieira on 23/10/21.
//

import UIKit

public final class AccountModule {
    
    public static func start(on navigationController: UINavigationController) {
        let storyboard = UIStoryboard(
            name: "Account",
            bundle: Bundle.init(for: self)
        )
        guard let initialViewController = storyboard.instantiateInitialViewController() as? AccountHomeViewController else { exit(0) }
        let businessHandler = AccountHomeViewModel()
        businessHandler.setup(displayer: initialViewController)
        initialViewController.setup(businessHandler: businessHandler)
        navigationController.pushViewController(
            initialViewController,
            animated: true
        )
    }
    
}

extension AccountModule{
    
    static var bundle: Bundle {
        
        return Bundle.init(for: self)
        
    }
    
}
