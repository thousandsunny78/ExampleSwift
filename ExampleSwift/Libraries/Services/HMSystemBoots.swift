//
//  HMSystemBoots.swift
//  ExampleSwift
//
//  Created by Quan on 26/05/2021.
//

import UIKit

class HMSystemBoots {
    // MARK: - Singleton
    static let instance = HMSystemBoots()
    
    // MARK: - Variables
    weak var appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate
    
    // MARK: - Actions
    func changeRoot(window: inout UIWindow?, rootController: UIViewController) {
        // Setup app's window
        guard window == nil else {
            window?.rootViewController = rootController
            window?.makeKeyAndVisible()
            return
        }
        window = UIWindow(frame: HMSystemInfo.screenBounds)
        window?.backgroundColor = .clear
        window?.rootViewController = rootController
        window?.makeKeyAndVisible()
    }
}
