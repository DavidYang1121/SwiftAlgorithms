//
//  SimplifyPath.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/12.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class SimplifyPath {
static func simplifyPath(_ path: String) -> String {
        let array = path.split(separator: "/")
        var stack = [String]()
        for (_, item) in array.enumerated() {
            if item == "." {
                continue
            } else if item == ".." {
                if stack.count > 0 {
                    stack.removeLast()
                }
            } else {
                stack.append(String(item))
            }
        }
        return "/" + stack.joined(separator: "/")
    }
}
