//
//  RectExtension.swift
//  HXKit-Swift
//
//  Created by RockerHX on 2017/2/10.
//  Copyright © 2017年 RockerHX. All rights reserved.
//
//  GitHub: https://github.com/rockerhx
//


import UIKit


extension CGRect {

    var x: Double {
        get {
            return Double(origin.x)
        }

        set {
            self.origin.x = CGFloat(newValue)
        }
    }

    var y: Double {
        get {
            return Double(origin.y)
        }

        set {
            self.origin.y = CGFloat(newValue)
        }
    }

    var width: Double {
        get {
            return Double(size.width)
        }

        set {
            self.size.width = CGFloat(newValue)
        }
    }

    var height: Double {
        get {
            return Double(size.height)
        }

        set {
            self.size.height = CGFloat(newValue)
        }
    }
}
