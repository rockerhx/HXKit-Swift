//
//  OperaterOptional.swift
//  HXKit-Swift
//
//  Created by RockerHX on 2018/3/12.
//  Copyright © 2018年 RockerHX. All rights reserved.
//
//  GitHub: https://github.com/rockerhx
//


import Foundation


// MARK: - Integer Literal Type -
extension Optional where Wrapped == IntegerLiteralType {

    var string: String? {
        switch self {
        case .some(let value):
            return String(value)
        default:
            return nil
        }
    }

}


extension Optional where Wrapped == IntegerLiteralType {

    static func + (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Wrapped {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value + rhs
            }
            if let value = rhs {
                return lhs + value
            }
            return 0
        }
        return lhsValue + rhsValue
    }

    static func + (lhs: Optional<Wrapped>, rhs: Wrapped) -> Wrapped {
        if let value = lhs {
            return value + rhs
        }
        return rhs
    }

    static func + (lhs: Wrapped, rhs: Optional<Wrapped>) -> Wrapped {
        if let value = rhs {
            return lhs + value
        }
        return lhs
    }

}


extension Optional where Wrapped == IntegerLiteralType {

    static func - (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Wrapped {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value - rhs
            }
            if let value = rhs {
                return lhs - value
            }
            return 0
        }
        return lhsValue - rhsValue
    }

    static func - (lhs: Optional<Wrapped>, rhs: Wrapped) -> Wrapped {
        if let value = lhs {
            return value - rhs
        }
        return -rhs
    }

    static func - (lhs: Wrapped, rhs: Optional<Wrapped>) -> Wrapped {
        if let value = rhs {
            return lhs - value
        }
        return lhs
    }

}


extension Optional where Wrapped == IntegerLiteralType {

    static func * (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Wrapped {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value * rhs
            }
            if let value = rhs {
                return lhs * value
            }
            return 0
        }
        return lhsValue * rhsValue
    }

    static func * (lhs: Optional<Wrapped>, rhs: Wrapped) -> Wrapped {
        if let value = lhs {
            return value * rhs
        }
        return 0
    }

    static func * (lhs: Wrapped, rhs: Optional<Wrapped>) -> Wrapped {
        if let value = rhs {
            return lhs * value
        }
        return 0
    }

}


extension Optional where Wrapped == IntegerLiteralType {

    static func / (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Optional<Wrapped> {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value / rhs
            }
            if let value = rhs {
                return lhs / value
            }
            return nil
        }
        return lhsValue / rhsValue
    }

    static func / (lhs: Optional<Wrapped>, rhs: Wrapped) -> Optional<Wrapped> {
        if 0 == rhs {
            return nil
        }
        if let value = lhs {
            return Optional(value / rhs)
        }
        return nil
    }

    static func / (lhs: Wrapped, rhs: Optional<Wrapped>) -> Optional<Wrapped> {
        if let value = rhs {
            if 0 == value {
                return nil
            }
            return Optional(lhs / value)
        }
        return nil
    }

}


extension Optional where Wrapped == IntegerLiteralType {

    static func % (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Optional<Wrapped> {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value % rhs
            }
            if let value = rhs {
                return lhs % value
            }
            return nil
        }
        return lhsValue % rhsValue
    }

    static func % (lhs: Optional<Wrapped>, rhs: Wrapped) -> Optional<Wrapped> {
        if 0 == rhs {
            return nil
        }
        if let value = lhs {
            return Optional(value % rhs)
        }
        return nil
    }

    static func % (lhs: Wrapped, rhs: Optional<Wrapped>) -> Optional<Wrapped> {
        if let value = rhs {
            if 0 == value {
                return nil
            }
            return Optional(lhs % value)
        }
        return nil
    }

}


extension Optional where Wrapped == IntegerLiteralType {

    static func += (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs + rhs
    }

    static func += (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs + rhs
    }

    static func += (lhs: inout Wrapped, rhs: Optional<Wrapped>) {
        lhs = lhs + rhs
    }

    static func -= (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs - rhs
    }

    static func -= (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs - rhs
    }

    static func -= (lhs: inout Wrapped, rhs: Optional<Wrapped>) {
        lhs = lhs - rhs
    }

    static func *= (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs * rhs
    }

    static func *= (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs * rhs
    }

    static func *= (lhs: inout Wrapped, rhs: Optional<Wrapped>) {
        lhs = lhs * rhs
    }

    static func /= (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs / rhs
    }

    static func /= (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs / rhs
    }

    static func %= (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs % rhs
    }

    static func %= (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs % rhs
    }

}


extension Optional where Wrapped == IntegerLiteralType {

    static func == (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        if let left = lhs, let right = rhs {
            return left == right
        }
        return false
    }

    static func == (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value == rhs
        }
        return false
    }

    static func == (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs == value
        }
        return false
    }

    static func != (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value != rhs
            }
            if let value = rhs {
                return lhs != value
            }
            return false
        }
        return lhsValue != rhsValue
    }

    static func != (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value != rhs
        }
        return true
    }

    static func != (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs != value
        }
        return true
    }

}


extension Optional where Wrapped == IntegerLiteralType {

    static func > (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        if let left = lhs, let right = rhs {
            return left > right
        }
        return false
    }

    static func > (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value > rhs
        }
        return false
    }

    static func > (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs > value
        }
        return true
    }

    static func >= (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value >= rhs
            }
            if let value = rhs {
                return lhs >= value
            }
            return false
        }
        return lhsValue >= rhsValue
    }

    static func >= (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value >= rhs
        }
        return false
    }

    static func >= (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs >= value
        }
        return false
    }

}


extension Optional where Wrapped == IntegerLiteralType {

    static func < (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        if let left = lhs, let right = rhs {
            return left < right
        }
        return false
    }

    static func < (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value < rhs
        }
        return true
    }

    static func < (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs < value
        }
        return false
    }

    static func <= (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value <= rhs
            }
            if let value = rhs {
                return lhs <= value
            }
            return false
        }
        return lhsValue <= rhsValue
    }

    static func <= (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value <= rhs
        }
        return false
    }

    static func <= (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs <= value
        }
        return false
    }

}


// MARK: - String Literal Type -
extension Optional where Wrapped == StringLiteralType {

    var int: Int? {
        switch self {
        case .some(let value):
            return Int(value)
        default:
            return nil
        }
    }

    var double: Double? {
        switch self {
        case .some(let value):
            return Double(value)
        default:
            return nil
        }
    }

    var float: Float? {
        switch self {
        case .some(let value):
            return Float(value)
        default:
            return nil
        }
    }

}


// MARK: - Float Literal Type -
extension Optional where Wrapped == FloatLiteralType {

    var string: String? {
        switch self {
        case .some(let value):
            return String(value)
        default:
            return nil
        }
    }

}


extension Optional where Wrapped == FloatLiteralType {

    static func + (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Wrapped {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value + rhs
            }
            if let value = rhs {
                return lhs + value
            }
            return 0
        }
        return lhsValue + rhsValue
    }

    static func + (lhs: Optional<Wrapped>, rhs: Wrapped) -> Wrapped {
        if let value = lhs {
            return value + rhs
        }
        return rhs
    }

    static func + (lhs: Wrapped, rhs: Optional<Wrapped>) -> Wrapped {
        if let value = rhs {
            return lhs + value
        }
        return lhs
    }

}


extension Optional where Wrapped == FloatLiteralType {

    static func - (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Wrapped {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value - rhs
            }
            if let value = rhs {
                return lhs - value
            }
            return 0
        }
        return lhsValue - rhsValue
    }

    static func - (lhs: Optional<Wrapped>, rhs: Wrapped) -> Wrapped {
        if let value = lhs {
            return value - rhs
        }
        return -rhs
    }

    static func - (lhs: Wrapped, rhs: Optional<Wrapped>) -> Wrapped {
        if let value = rhs {
            return lhs - value
        }
        return lhs
    }

}


extension Optional where Wrapped == FloatLiteralType {

    static func * (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Wrapped {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value * rhs
            }
            if let value = rhs {
                return lhs * value
            }
            return 0
        }
        return lhsValue * rhsValue
    }

    static func * (lhs: Optional<Wrapped>, rhs: Wrapped) -> Wrapped {
        if let value = lhs {
            return value * rhs
        }
        return 0
    }

    static func * (lhs: Wrapped, rhs: Optional<Wrapped>) -> Wrapped {
        if let value = rhs {
            return lhs * value
        }
        return 0
    }

}


extension Optional where Wrapped == FloatLiteralType {

    static func / (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Optional<Wrapped> {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value / rhs
            }
            if let value = rhs {
                return lhs / value
            }
            return nil
        }
        return lhsValue / rhsValue
    }

    static func / (lhs: Optional<Wrapped>, rhs: Wrapped) -> Optional<Wrapped> {
        if 0 == rhs {
            return nil
        }
        if let value = lhs {
            return Optional(value / rhs)
        }
        return nil
    }

    static func / (lhs: Wrapped, rhs: Optional<Wrapped>) -> Optional<Wrapped> {
        if let value = rhs {
            if 0 == value {
                return nil
            }
            return Optional(lhs / value)
        }
        return nil
    }

}


extension Optional where Wrapped == FloatLiteralType {

    static func += (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs + rhs
    }

    static func += (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs + rhs
    }

    static func += (lhs: inout Wrapped, rhs: Optional<Wrapped>) {
        lhs = lhs + rhs
    }

    static func -= (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs - rhs
    }

    static func -= (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs - rhs
    }

    static func -= (lhs: inout Wrapped, rhs: Optional<Wrapped>) {
        lhs = lhs - rhs
    }

    static func *= (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs * rhs
    }

    static func *= (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs * rhs
    }

    static func *= (lhs: inout Wrapped, rhs: Optional<Wrapped>) {
        lhs = lhs * rhs
    }

    static func /= (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs / rhs
    }

    static func /= (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs / rhs
    }

}


extension Optional where Wrapped == FloatLiteralType {

    static func == (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        if let left = lhs, let right = rhs {
            return left == right
        }
        return false
    }

    static func == (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value == rhs
        }
        return false
    }

    static func == (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs == value
        }
        return false
    }

    static func != (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value != rhs
            }
            if let value = rhs {
                return lhs != value
            }
            return false
        }
        return lhsValue != rhsValue
    }

    static func != (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value != rhs
        }
        return true
    }

    static func != (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs != value
        }
        return true
    }

}


extension Optional where Wrapped == FloatLiteralType {

    static func > (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        if let left = lhs, let right = rhs {
            return left > right
        }
        return false
    }

    static func > (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value > rhs
        }
        return false
    }

    static func > (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs > value
        }
        return true
    }

    static func >= (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value >= rhs
            }
            if let value = rhs {
                return lhs >= value
            }
            return false
        }
        return lhsValue >= rhsValue
    }

    static func >= (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value >= rhs
        }
        return false
    }

    static func >= (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs >= value
        }
        return false
    }

}


extension Optional where Wrapped == FloatLiteralType {

    static func < (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        if let left = lhs, let right = rhs {
            return left < right
        }
        return false
    }

    static func < (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value < rhs
        }
        return true
    }

    static func < (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs < value
        }
        return false
    }

    static func <= (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value <= rhs
            }
            if let value = rhs {
                return lhs <= value
            }
            return false
        }
        return lhsValue <= rhsValue
    }

    static func <= (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value <= rhs
        }
        return false
    }

    static func <= (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs <= value
        }
        return false
    }

}


// MARK: - CGFloat Type -
extension Optional where Wrapped == CGFloat {

    static func + (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Wrapped {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value + rhs
            }
            if let value = rhs {
                return lhs + value
            }
            return 0
        }
        return lhsValue + rhsValue
    }

    static func + (lhs: Optional<Wrapped>, rhs: Wrapped) -> Wrapped {
        if let value = lhs {
            return value + rhs
        }
        return rhs
    }

    static func + (lhs: Wrapped, rhs: Optional<Wrapped>) -> Wrapped {
        if let value = rhs {
            return lhs + value
        }
        return lhs
    }

}


extension Optional where Wrapped == CGFloat {

    static func - (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Wrapped {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value - rhs
            }
            if let value = rhs {
                return lhs - value
            }
            return 0
        }
        return lhsValue - rhsValue
    }

    static func - (lhs: Optional<Wrapped>, rhs: Wrapped) -> Wrapped {
        if let value = lhs {
            return value - rhs
        }
        return -rhs
    }

    static func - (lhs: Wrapped, rhs: Optional<Wrapped>) -> Wrapped {
        if let value = rhs {
            return lhs - value
        }
        return lhs
    }

}


extension Optional where Wrapped == CGFloat {

    static func * (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Wrapped {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value * rhs
            }
            if let value = rhs {
                return lhs * value
            }
            return 0
        }
        return lhsValue * rhsValue
    }

    static func * (lhs: Optional<Wrapped>, rhs: Wrapped) -> Wrapped {
        if let value = lhs {
            return value * rhs
        }
        return 0
    }

    static func * (lhs: Wrapped, rhs: Optional<Wrapped>) -> Wrapped {
        if let value = rhs {
            return lhs * value
        }
        return 0
    }

}


extension Optional where Wrapped == CGFloat {

    static func / (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Optional<Wrapped> {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value / rhs
            }
            if let value = rhs {
                return lhs / value
            }
            return nil
        }
        return lhsValue / rhsValue
    }

    static func / (lhs: Optional<Wrapped>, rhs: Wrapped) -> Optional<Wrapped> {
        if 0 == rhs {
            return nil
        }
        if let value = lhs {
            return Optional(value / rhs)
        }
        return nil
    }

    static func / (lhs: Wrapped, rhs: Optional<Wrapped>) -> Optional<Wrapped> {
        if let value = rhs {
            if 0 == value {
                return nil
            }
            return Optional(lhs / value)
        }
        return nil
    }

}


extension Optional where Wrapped == CGFloat {

    static func += (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs + rhs
    }

    static func += (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs + rhs
    }

    static func += (lhs: inout Wrapped, rhs: Optional<Wrapped>) {
        lhs = lhs + rhs
    }

    static func -= (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs - rhs
    }

    static func -= (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs - rhs
    }

    static func -= (lhs: inout Wrapped, rhs: Optional<Wrapped>) {
        lhs = lhs - rhs
    }

    static func *= (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs * rhs
    }

    static func *= (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs * rhs
    }

    static func *= (lhs: inout Wrapped, rhs: Optional<Wrapped>) {
        lhs = lhs * rhs
    }

    static func /= (lhs: inout Optional<Wrapped>, rhs: Optional<Wrapped>) {
        lhs = lhs / rhs
    }

    static func /= (lhs: inout Optional<Wrapped>, rhs: Wrapped) {
        lhs = lhs / rhs
    }

}


extension Optional where Wrapped == CGFloat {

    static func == (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        if let left = lhs, let right = rhs {
            return left == right
        }
        return false
    }

    static func == (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value == rhs
        }
        return false
    }

    static func == (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs == value
        }
        return false
    }

    static func != (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value != rhs
            }
            if let value = rhs {
                return lhs != value
            }
            return false
        }
        return lhsValue != rhsValue
    }

    static func != (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value != rhs
        }
        return true
    }

    static func != (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs != value
        }
        return true
    }

}


extension Optional where Wrapped == CGFloat {

    static func > (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        if let left = lhs, let right = rhs {
            return left > right
        }
        return false
    }

    static func > (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value > rhs
        }
        return false
    }

    static func > (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs > value
        }
        return true
    }

    static func >= (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value >= rhs
            }
            if let value = rhs {
                return lhs >= value
            }
            return false
        }
        return lhsValue >= rhsValue
    }

    static func >= (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value >= rhs
        }
        return false
    }

    static func >= (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs >= value
        }
        return false
    }

}


extension Optional where Wrapped == CGFloat {

    static func < (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        if let left = lhs, let right = rhs {
            return left < right
        }
        return false
    }

    static func < (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value < rhs
        }
        return true
    }

    static func < (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs < value
        }
        return false
    }

    static func <= (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        guard let lhsValue = lhs, let rhsValue = rhs else {
            if let value = lhs {
                return value <= rhs
            }
            if let value = rhs {
                return lhs <= value
            }
            return false
        }
        return lhsValue <= rhsValue
    }

    static func <= (lhs: Optional<Wrapped>, rhs: Wrapped) -> Bool {
        if let value = lhs {
            return value <= rhs
        }
        return false
    }

    static func <= (lhs: Wrapped, rhs: Optional<Wrapped>) -> Bool {
        if let value = rhs {
            return lhs <= value
        }
        return false
    }

}

