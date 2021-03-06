//
//  HXNavigationController.swift
//  HXKit-Swift
//
//  Created by RockerHX on 2018/4/2.
//  Copyright © 2018年 RockerHX. All rights reserved.
//
//  GitHub: https://github.com/rockerhx
//


import UIKit


class HXNavigationController: UINavigationController {

    // MARK: - View Controller Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    // MARK: - Event Methods -
    // MARK: - Public Methods -
    // MARK: - Private Methods -
    private func configure() {
        interactivePopGestureRecognizer?.delegate = self
    }

}


extension HXNavigationController: UIGestureRecognizerDelegate {

    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

}

