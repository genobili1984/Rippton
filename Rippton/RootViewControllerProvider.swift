//
//  RootViewControllerProvider.swift
//  Rippton
//
//  Created by mao on 10/23/17.
//  Copyright © 2017 com.icomico.comi. All rights reserved.
//

import UIKit
import ESTabBarController

enum RootViewControllerProvider   {
    static func  tabbarWithNavigationStyle()  -> ESTabBarController  {
        let tabBarController = ESTabBarController()
        let v1 = HomeViewController(nibName:"HomeViewController", bundle:nil)
        let v2 = KMViewController()
        v2.view.backgroundColor = UIColor.red
        
        v1.tabBarItem = ESTabBarItem.init(title:"home", image:UIImage(named:"home"), selectedImage: UIImage(named:"home1"))
        v2.tabBarItem = ESTabBarItem.init(title:"find", image:UIImage(named:"find"), selectedImage: UIImage(named:"find1"))
        
        let n1 = UINavigationController.init( rootViewController: v1)
        let n2 = UINavigationController.init( rootViewController: v2)
        
        v1.title = "home"
        v2.title = "find"
        
        tabBarController.viewControllers = [n1, n2]
        return tabBarController
    }
}
