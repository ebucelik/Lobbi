//
//  TabBarController.swift
//  Lobbi
//
//  Created by Ebu Bekir Celik on 06.10.21.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        delegate = self
        
        tabBar.tintColor = .black
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        viewControllers = [
            createNavController(for: ViewController(), tabTitle: "Home", tabImage: UIImage(systemName: "house")!),
            createNavController(for: ViewController(), tabTitle: "Account", tabImage: UIImage(systemName: "person")!)
        ]
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         tabTitle: String,
                                         tabImage: UIImage) -> UIViewController {
        rootViewController.navigationItem.title = tabTitle
        
        let barAppearance = UIBarAppearance()
        barAppearance.backgroundColor = .orange
        
        let navController: UINavigationController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = tabTitle
        navController.tabBarItem.image = tabImage
        navController.navigationItem.largeTitleDisplayMode = .never
        navController.navigationBar.standardAppearance = UINavigationBarAppearance(barAppearance: barAppearance)
        navController.navigationBar.scrollEdgeAppearance = UINavigationBarAppearance(barAppearance: barAppearance)
        
        return navController
    }
    
}
