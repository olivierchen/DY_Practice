//
//  UIButtonVC-extensions.swift
//  DY_Practice
//
//  Created by Olivier CHEN on 2019/2/17.
//  Copyright © 2019 Olivier CHEN. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    convenience init(_ bkColor: UIColor = UIColor.green, _ size: CGSize = CGSize(width: 0, height: 0) ){
        let btn = UIButton()
        //Set Color
        btn.backgroundColor=bkColor
        //Set Frame
        btn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        
        self.init(customView: btn) ///// 需要注意理解这一句！！ 在调用它自己的init. 用self 它是一个closure吗？
    }
}
