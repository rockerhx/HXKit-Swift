//
//  HXIBViewExtension.swift
//  EShop
//
//  Created by miaios on 16/1/20.
//  Copyright © 2016年 Cave. All rights reserved.
//


import UIKit


extension UIView {

    @IBInspectable var masksToBounds: Bool {
        get {
            return layer.masksToBounds;
        }
        set {
            layer.masksToBounds = newValue;
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius;
        }
        set {
            layer.cornerRadius = newValue;
            layer.masksToBounds = cornerRadius > 0;
        }
    }

    @IBInspectable var hexRGBColor: String {
        get {
            return "0xffffff";
        }
        set {
            backgroundColor = UIColor.color(withRGBHex: newValue)
        }
    }

    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth;
        }
        set {
            layer.borderWidth = newValue;
        }
    }

    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue.cgColor;
        }
    }

    @IBInspectable var borderHexRGBColor: String {
        get {
            return "0xffffff";
        }
        set {
            layer.borderColor = UIColor.color(withRGBHex: newValue).cgColor
        }
    }
}
