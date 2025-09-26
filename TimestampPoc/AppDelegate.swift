//
//  AppDelegate.swift
//  TimestampPoc
//
//  Created by Matheus Fernandes on 26/09/25.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    static let initialized: Void = {
        Logger.shared.mark("AppDelegate static attribute")
    }()
    
    var window: UIWindow?
    
    override init() {
        super.init()
        _ = AppDelegate.initialized
    }
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        window = .init(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        Logger.shared.mark("didFinishLaunchingWithOptions")
        return true
    }
}

