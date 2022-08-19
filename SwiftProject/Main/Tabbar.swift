//
//  Tabbar.swift
//  SwiftProject
//
//  Created by Eddie on 2022/8/19.
//

import UIKit
// 自定义Tabbar 
class Tabbar: UITabBar {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        for item in subviews where item is UIControl {
            var frame = item.frame
            frame.origin.y = -2
            item.frame = frame
        }
    }

}
