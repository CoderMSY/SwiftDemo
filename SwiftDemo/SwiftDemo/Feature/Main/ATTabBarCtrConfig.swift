//
//  ATTabBarCtrConfig.swift
//  SwiftDemo
//
//  Created by SimonMiao on 2019/4/24.
//  Copyright © 2019 avatar. All rights reserved.
//

import UIKit
import ESTabBarController_swift

class ATTabBarCtrConfig: NSObject {

//    var tabBarCtr: UITabBarController?
    
    override init() {
        //
    }
    func setupTabBar(delegate: UITabBarControllerDelegate?) -> ESTabBarController {
        let tabBarController = ESTabBarController()
        tabBarController.delegate = delegate
        tabBarController.title = "Irregularity"
        tabBarController.tabBar.shadowImage = UIImage(named: "transparent")
        tabBarController.shouldHijackHandler = {
            tabbarController, viewController, index in
            if index == 2 {
                return false
            }
            return false
        }
        
        let home = ATHomeViewController()
        let listen = ATListenViewController()
//        let play = ATPlayController()
        let find = ATFindViewController()
        let mine = ATMineViewController()
        
        home.tabBarItem = ESTabBarItem.init(ATBouncesItemContentView(), title: "首页", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        listen.tabBarItem = ESTabBarItem.init(ATBouncesItemContentView(), title: "我听", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"))
//        play.tabBarItem = ESTabBarItem.init(ATBouncesItemContentView(), title: nil, image: UIImage(named: "tab_play"), selectedImage: UIImage(named: "tab_play"))
        find.tabBarItem = ESTabBarItem.init(ATBouncesItemContentView(), title: "发现", image: UIImage(named: "favor"), selectedImage: UIImage(named: "favor_1"))
        mine.tabBarItem = ESTabBarItem.init(ATBouncesItemContentView(), title: "我的", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"))
        let homeNav = UINavigationController.init(rootViewController: home)
        let listenNav = UINavigationController.init(rootViewController: listen)
//        let playNav = UINavigationController.init(rootViewController: play)
        let findNav = UINavigationController.init(rootViewController: find)
        let mineNav = UINavigationController.init(rootViewController: mine)
        home.title = "首页"
        listen.title = "我听"
//        play.title = "播放"
        find.title = "发现"
        mine.title = "我的"
        
        tabBarController.viewControllers = [homeNav, listenNav, findNav, mineNav]
        return tabBarController
    }
}
