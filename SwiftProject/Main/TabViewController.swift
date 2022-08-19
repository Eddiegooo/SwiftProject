//
//  TabViewController.swift
//  SwiftProject
//
//  Created by Eddie on 2022/8/19.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 使用自动以的Tabbar
        setValue(Tabbar(), forKey: "tabBar")
        
        tabBar.barTintColor = .white
        // 记得勾选Main 里的 inital view controller
        addChildVc(title: "首页", image: "home", selectedImage: "home_selected", type: HomeViewController.self)
        addChildVc(title: "分类", image: "home", selectedImage: "home_selected", type: CategoryViewController.self)
        addChildVc(title: "用户", image: "home", selectedImage: "home_selected", type: UserViewController.self)
    }
    
    
    
    func addChildVc(title: String, image: String, selectedImage:  String, type: UIViewController.Type) {
        let VC = UINavigationController(rootViewController: type.init())
        VC.title = title
        VC.tabBarItem.title = title
        VC.tabBarItem.image = UIImage(named: image)
        VC.tabBarItem.selectedImage = UIImage(named: selectedImage)
        VC.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.black], for: .selected)
        addChild(VC)
    }
    
}
