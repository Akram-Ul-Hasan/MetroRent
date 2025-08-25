//
//  UIApplication + Extensions.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/25/25.
//

import Foundation
import UIKit

extension UIApplication {
    var topViewController: UIViewController? {
        guard let windowScene = connectedScenes
                .compactMap({ $0 as? UIWindowScene })
                .first(where: { $0.activationState == .foregroundActive }),
              let rootVC = windowScene.windows.first(where: { $0.isKeyWindow })?.rootViewController
        else { return nil }
        
        return Self.getTopViewController(rootVC)
    }
    
    private static func getTopViewController(_ vc: UIViewController?) -> UIViewController? {
        if let nav = vc as? UINavigationController {
            return getTopViewController(nav.visibleViewController)
        }
        if let tab = vc as? UITabBarController {
            return getTopViewController(tab.selectedViewController)
        }
        if let presented = vc?.presentedViewController {
            return getTopViewController(presented)
        }
        return vc
    }
}
