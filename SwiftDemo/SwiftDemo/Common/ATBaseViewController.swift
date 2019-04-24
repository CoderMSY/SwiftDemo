//
//  ATBaseViewController.swift
//  SwiftDemo
//
//  Created by SimonMiao on 2019/4/24.
//  Copyright © 2019 avatar. All rights reserved.
//

import UIKit

class ATBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let currentClass:AnyClass! = object_getClass(self)
        let className = NSStringFromClass(currentClass)
        
        print("😄😄😄:\(className)")
    }
    
    deinit {
        let currentClass:AnyClass! = object_getClass(self)
        let className = NSStringFromClass(currentClass)
        
        print("😂😂😂:\(className)")
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
