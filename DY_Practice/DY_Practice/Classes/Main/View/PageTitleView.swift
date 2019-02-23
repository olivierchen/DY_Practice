//
//  PageTitleView.swift
//  DY_Practice
//
//  Created by Olivier CHEN on 2019/2/23.
//  Copyright © 2019 Olivier CHEN. All rights reserved.
//

import UIKit

class PageTitleView: UIView {

    //定义属性
    private var titles: [String]
    private lazy var titleLables: [UILabel] = [UILabel]()
    
    private let ScrollLine: CGFloat = 2.0
    
    private lazy var scrollView: UIScrollView = { //这是系统本来就有的，不需要自己在写成方法，直接用就好了。
        let ScrollView = UIScrollView()
        ScrollView.scrollsToTop = true
        ScrollView.showsHorizontalScrollIndicator = true
        
        return ScrollView
    }()
    
    //添加浅灰色的底线，一条过去。
    private lazy var bottomLine: UIView = {
        let bottomLineL = UIView()
        bottomLineL.frame = CGRect(x: 0, y: frame.height, width: ScreenW, height: 1.5)
        bottomLineL.backgroundColor = UIColor.lightGray
        return bottomLineL
    }()
    
    //构造函数，最后返回一个UIView的么
    init(frame: CGRect, titles: [String]) {
        self.titles = titles
        super.init(frame: frame)
        
        setupUI()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension PageTitleView{
    private func setupUI(){
        addSubview(scrollView)
        scrollView.frame = bounds
        
        addSubview(bottomLine)
        
        setupTitleLables()
        setupScrollPitch()
    }
    

    private func setupTitleLables(){
        
        let LableW: CGFloat = frame.width / CGFloat(titles.count) //这里的frame到底指代哪个？
        let LableH: CGFloat = frame.height - ScrollLine
        let LableY: CGFloat = 0
        
        for (index, title) in titles.enumerated(){
            //Define the lables
            let lable = UILabel()
            lable.text = title
            lable.tag = index
            lable.font = UIFont.systemFont(ofSize: 16.0)
            lable.textColor = UIColor.darkGray
            lable.textAlignment = .center
            
            
            let LableX: CGFloat = LableW * CGFloat(index)
            lable.frame = CGRect(x: LableX, y: LableY, width: LableW, height: LableH)
            
            scrollView.addSubview(lable) //每一个UI组件，需要有frame,然后加入到一个view里面，才可以被看到！
            titleLables.append(lable)
        }
    }
    
    private func setupScrollPitch(){
        let scrollPitch = UILabel()
        let firstLable = titleLables.first
        let scrollPitchW = CGFloat((firstLable?.frame.width)!)
        scrollPitch.frame = CGRect(x: 0, y: 0, width: scrollPitchW , height: frame.height)
        let scrollPitchLine = UIView()
        scrollPitchLine.frame = CGRect(x: 0, y: Int(frame.height), width: Int(scrollPitchW), height: 2)
        scrollPitchLine.backgroundColor = UIColor.orange
        scrollPitch.addSubview(scrollPitchLine)
        addSubview(scrollPitch)
    }
}

