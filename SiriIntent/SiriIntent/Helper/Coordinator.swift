//
//  Coordinator.swift
//  SiriIntent
//
//  Created by Anil Kothari on 24/05/23.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var rootNavigationController: UINavigationController { get set }
    func start()
    func stop()
    
    func show(_ viewController: UIViewController, animated: Bool)
    func present(_ viewController: UIViewController, animated: Bool)
}

extension Coordinator {
    func show(_ viewController: UIViewController, animated: Bool = false) {
        rootNavigationController.pushViewController(viewController, animated: animated)
    }
    
    func present(_ viewController: UIViewController, animated: Bool = false) {
        rootNavigationController.present(viewController, animated: animated)
    }
}
