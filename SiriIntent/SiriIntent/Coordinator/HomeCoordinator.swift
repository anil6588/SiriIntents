//
//  HomeCoordinator.swift
//  SiriIntent
//
//  Created by Anil Kothari on 24/05/23.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator]
    var rootNavigationController: UINavigationController
    
    let homeStoryboard = UIStoryboard(name: Storyboard.home.value, bundle: Bundle.main)

    init(rootNavigationController: UINavigationController,
         parentCoordinator: Coordinator) {
        self.rootNavigationController = rootNavigationController
        self.parentCoordinator = parentCoordinator
        self.childCoordinators = []
    }
    
    func start() {
        showHome()
    }
    
    func showHome() {
        let vc = homeStoryboard.instantiateViewController(identifier: HomeViewController.identifier) { coder in
            HomeViewController(viewModel: HomeViewModel(), coder: coder)
        }
        rootNavigationController.pushViewController(vc, animated: false)
    }
    
    func stop() {
        parentCoordinator?.stop()
    }
}
