//
//  AppCoordinator.swift
//  SiriIntent
//
//  Created by Anil Kothari on 24/05/23.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var rootNavigationController: UINavigationController
    var childCoordinators = [Coordinator]()
    let window: UIWindow

    init(window: UIWindow) {
        rootNavigationController = UINavigationController()
        self.window = window
        self.window.rootViewController = rootNavigationController
        self.window.makeKeyAndVisible()
    }

    func start() {
        startHomeCoordinator()
    }
    
    func startHomeCoordinator() {
        let HomeCoordinator = HomeCoordinator(rootNavigationController: rootNavigationController,
                                                          parentCoordinator: self)
        HomeCoordinator.start()
        childCoordinators.append(HomeCoordinator)
    }
    
    func stop() {
        // To be written at all the child coordinator to stop & remove from container
    }
}
