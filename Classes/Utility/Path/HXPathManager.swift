//
//  HXPathManager.swift
//  HXKit-Swift
//
//  Created by ShiCang on 16/5/7.
//  Copyright © 2017年 RockerHX. All rights reserved.
//
//  GitHub: https://github.com/rockerhx
//


import UIKit


enum HXDirectory {
    case Home
    case Document
    case Library
    case Caches
    case Temp

    var path: String? {
        switch self {
        case .Home:
            return NSHomeDirectory()
        case .Document:
            return self.searchPath(with: .documentDirectory)
        case .Library:
            return self.searchPath(with: .libraryDirectory)
        case .Caches:
            return self.searchPath(with: .cachesDirectory)
        case .Temp:
            return NSTemporaryDirectory()
        }
    }

    func searchPath(with directory: FileManager.SearchPathDirectory) -> String? {
        return NSSearchPathForDirectoriesInDomains(directory, .userDomainMask, true).last
    }
}


class HXPathManager: NSObject {

    // MARK: - Singleton
    static let manager = HXPathManager()

    // MARK: - Public Methods
    public func path(withDirectory directory: HXDirectory, subPath: String = "") -> String? {
        guard let path = directory.path else { return nil }
        return path + subPath
    }

    public func storePath(withDirectory directory: HXDirectory = .Caches, relativePath: String, fileName: String) -> String? {
        if let directoryPath = directory.path {
            let path = directoryPath + relativePath
            if fileExists(atPath: path, created: true) {
                return path + "/" + fileName
            }
        }
        return nil
    }

    public func remove(withDirectory directory: HXDirectory = .Caches, relativePath: String, fileName: String) {
        if let directoryPath = directory.path {
            let path = directoryPath + relativePath + "/" + fileName
            do {
                try FileManager.default.removeItem(atPath: path)
            } catch {
                debugPrint(error)
            }
        }
    }

    public func fileExists(atPath path: String, created: Bool = false) -> Bool {
        let fileManager = FileManager.default

        if fileManager.fileExists(atPath: path) {
            return true
        }

        if created {
            do {
                try fileManager.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
            } catch {
                return false
            }
        }
        return false
    }

    // MARK: - Private Methods

}

