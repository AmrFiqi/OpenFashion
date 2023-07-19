//
//  AppDelegate.swift
//  OpenFashion
//
//  Created by Amr El-Fiqi on 19/07/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        showMainView()
        return true
    }

    func showMainView() {
        // Set main view controller
        let HomeVC = HomeViewController()
        let navigationController = UINavigationController(rootViewController: HomeVC)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
    

}

