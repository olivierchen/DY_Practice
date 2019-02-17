//
//  MainViewController.swift
//  DY_Practice
//
//  Created by Olivier CHEN on 2019/2/17.
//  Copyright © 2019 Olivier CHEN. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    createTab("Home")
    createTab("Live")
    createTab("Follow")
    createTab("Profile")
        
    }

    private func createTab(_ tabName: String){
        
        let newTab = UIStoryboard(name: tabName, bundle: nil).instantiateInitialViewController()!
        addChild(newTab)
    }
}
