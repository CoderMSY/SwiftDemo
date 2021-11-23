//
//  TabBarCtrConfig.swift
//  SwiftDemo
//
//  Created by Simon Miao on 2021/11/16.
//  Copyright © 2021 avatar. All rights reserved.
//

import UIKit
import CYLTabBarController

class TabBarCtrConfig: NSObject {
    
    lazy var tabBarCtr: UITabBarController? = {
        let tabBarCtr = CYLTabBarController(viewControllers: viewControllers(), tabBarItemsAttributes: tabBarItemsAttributes())
        
        return tabBarCtr
    }()
    
    override init() {
        super.init()
        
        tabBarCtr?.delegate = self
        let selectIndex = UserDefaults.standard.object(forKey: "kUD_selectTabBarIndex")
        tabBarCtr?.selectedIndex = selectIndex as! Int
    }
    
    func viewControllers() -> [UINavigationController] {
        let home = UINavigationController(rootViewController: ATHomeViewController())
        let listen = UINavigationController(rootViewController:ATListenViewController())
//        let play = UINavigationController(rootViewController:ATPlayController())
        let find = UINavigationController(rootViewController:ATFindViewController())
        let mine = UINavigationController(rootViewController:ATMineViewController())
        
        let viewCtrs = [home, listen, find, mine]
        
        return viewCtrs
    }
    
    func tabBarItemsAttributes() -> [[String : String]] {
        let tabBarItemOne = [CYLTabBarItemTitle:"首页",
                             CYLTabBarItemImage:"home",
                             CYLTabBarItemSelectedImage:"home_1"]
        
        let tabBarItemTwo = [CYLTabBarItemTitle:"我听",
                             CYLTabBarItemImage:"find",
                             CYLTabBarItemSelectedImage:"find_1"]
        
        let tabBarItemThree = [CYLTabBarItemTitle:"发现",
                               CYLTabBarItemImage:"favor",
                               CYLTabBarItemSelectedImage:"favor_1"]
        
        let tabBarItemFour = [CYLTabBarItemTitle:"我的",
                              CYLTabBarItemImage:"me",
                              CYLTabBarItemSelectedImage:"me_1"]
        let tabBarItemsAttributes = [tabBarItemOne,tabBarItemTwo,tabBarItemThree,tabBarItemFour]
        
        return tabBarItemsAttributes
    }
    
}

extension TabBarCtrConfig: CYLTabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect control: UIControl) {
        UserDefaults.standard.set(tabBarController.selectedIndex, forKey: "kUD_selectTabBarIndex")
        UserDefaults.standard.synchronize()
    }
    
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//
//    }
}
