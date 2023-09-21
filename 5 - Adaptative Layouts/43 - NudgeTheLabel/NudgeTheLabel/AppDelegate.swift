//
//  AppDelegate.swift
//  NudgeTheLabel
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        
        //
        // This design challenge solution can be found in the Examples App under: Orientations > AdjustConstraints
        //
        let navigatorController = UINavigationController(rootViewController: NudgeTheLabel())
        window?.rootViewController = navigatorController
        
        return true
    }

}

