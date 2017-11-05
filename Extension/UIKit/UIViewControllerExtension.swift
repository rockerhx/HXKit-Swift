//
//  UIViewControllerExtension.swift
//  HXKit-Swift
//
//  Created by RockerHX on 2017/9/3.
//  Copyright © 2017年 RockerHX. All rights reserved.
//
//  GitHub: https://github.com/rockerhx
//


import UIKit


public extension UIViewController {

    @IBAction public func unwindToPreviousController(_ segue: UIStoryboardSegue) {}
    
    @IBAction public func unwindToPreviousSence(_ segue: UIStoryboardSegue) {
        self.dismiss(animated: true, completion: nil)
    }
}
