//
//  AppDelegate.swift
//  SpotifyPlayer
//
//  Created by Mariano Martin Battaglia on 15/06/2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()

//        let navigatorController = UINavigationController(rootViewController: Challenge())
        let navigatorController = UINavigationController(rootViewController: SpotifyPlayerViewController())
        window?.rootViewController = navigatorController

        return true
    }

}
