//
//  AppDelegate.swift
//  Pikalong
//
//  Created by Chinh Pham N. on 8/18/20.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties
    var window: UIWindow?

    // MARK: - Singleton
    static let shared: AppDelegate = {
        guard let shared = UIApplication.shared.delegate as? AppDelegate else {
            fatalError("Cannot cast `UIApplication.shared.delegate` to `AppDelegate`.")
        }
        return shared
    }()

    // MARK: - Life Cycle
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .black
        window?.makeKeyAndVisible()
        setRoot(with: .splash)
        return true
    }
}

// MARK: - Public Functions
extension AppDelegate {

    func setRoot(with rootType: RootType) {
        switch rootType {
        case .splash:
            window?.rootViewController = SplashViewController()
        case .top:
            let topVC = TopViewController()
            window?.rootViewController = UINavigationController(rootViewController: topVC)
        }
    }
}

// MARK: - RootType
extension AppDelegate {

    enum RootType {
        case splash
        case top
    }
}
