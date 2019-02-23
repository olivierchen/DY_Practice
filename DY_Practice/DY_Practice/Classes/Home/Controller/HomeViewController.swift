//
//  HomeViewController.swift
//  DY_Practice
//
//  Created by Olivier CHEN on 2019/2/17.
//  Copyright © 2019 Olivier CHEN. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    private let TitleBarH: CGFloat = 40
    
    //let NavigationBarHight: CGFloat = 
    //作为整个HomePageView的一部分，懒加载它先
    private lazy var HomePageTitleView: PageTitleView = { //这里是一个闭包了厚?
        let frame = CGRect(x: 0, y: kStatusBarH + kNavigateBarH, width: ScreenW, height: TitleBarH)
        let titles = ["推荐","娱乐","游戏","趣玩"]
        let titleView = PageTitleView(frame: frame, titles: titles)
        //titleView.backgroundColor = UIColor.purple
        return titleView
        
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupUI()
        
        //Add titleview
        view.addSubview(HomePageTitleView)
        //HomePageTitleView.frame.origin.y = self.navigationController!.navigationBar.frame.height
        
    }

}

extension HomeViewController{
    
    private func setupUI(){
        let size = CGSize(width: 40, height: 40)
        //Left side
        navigationItem.leftBarButtonItem = UIBarButtonItem(UIColor.green, size)
        //Right side
        let searchItem = UIBarButtonItem(UIColor.purple, size)
        let qrcodeItem = UIBarButtonItem(UIColor.blue, size)
        let historyItem = UIBarButtonItem(UIColor.red, size)
        navigationItem.rightBarButtonItems = [searchItem, qrcodeItem, historyItem]
        
    }
}
