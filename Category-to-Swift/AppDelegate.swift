//
//  AppDelegate.swift
//  Category-to-Swift
//
//  Created by Cong Le on 4/29/20.
//  Copyright © 2020 CongLeSolutionX. All rights reserved.
//
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var  window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeVC = HomeViewController()
        window?.rootViewController = homeVC
        window?.makeKeyAndVisible()
        window?.backgroundColor = .lightGray
        return true
    }
}

