//
//  TabBarController+Extension.swift
//  Lobbi
//
//  Created by Ebu Bekir Celik on 06.10.21.
//

import UIKit

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
}
