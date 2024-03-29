//
//  ATHomeViewController.swift
//  SwiftDemo
//
//  Created by SimonMiao on 2019/4/24.
//  Copyright © 2019 avatar. All rights reserved.
//

import UIKit
import DNSPageView

class ATHomeViewController: ATBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupPageStyle()
    }
    func setupPageStyle() {
        // 创建DNSPageStyle，设置样式
        let style = PageStyle()
        style.isTitleViewScrollEnabled = false
        style.isTitleScaleEnabled = true
        style.isShowBottomLine = true
        style.titleSelectedColor = UIColor.black
        style.titleColor = UIColor.gray
        style.bottomLineColor = UIColor(red: 242/255.0, green: 77/255.0, blue: 51/255.0, alpha: 1)
        style.bottomLineHeight = 2
        
        let titles = ["推荐","分类","VIP","直播","广播"]
        let viewControllers:[UIViewController] = [ATHomeRecommendViewController(),ATHomeClassifyViewController(),ATHomeVIPViewController(),ATHomeLiveViewController(),ATHomeBroadcastViewController()]
        for vc in viewControllers{
            self.addChild(vc)
        }
        
        let status_h = UIApplication.shared.statusBarFrame.size.height
        let navBar_h = self.navigationController?.navigationBar.frame.size.height ?? 0
        let tabBar_h = self.tabBarController?.tabBar.frame.size.height ?? 0
        
        let pageView = PageView(frame: CGRect(x: 0, y: status_h + navBar_h, width: SCREEN_WIDTH, height: SCREEN_HEIGHT - status_h - navBar_h - tabBar_h), style: style, titles: titles, childViewControllers: viewControllers)
        pageView.contentView.backgroundColor = UIColor.red
        view.addSubview(pageView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
