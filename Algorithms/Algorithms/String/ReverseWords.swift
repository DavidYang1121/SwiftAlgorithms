//
//  ReverseWords.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/12.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class ReverseWords {
    
    func reverse<T>(_ chars: inout [T], start: Int, end: Int) {
        var start = start, end = end
        while start < end {
            chars.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
    
    func reverseWords(_ s: String) -> String {
        guard !s.isEmpty else {
            return ""
        }
        var start = 0
        var chars = Array(s)
        reverse(&chars, start: 0, end: chars.count - 1)
        for i in 0..<chars.count {
            if i == chars.count - 1 || chars[i + 1] == " " {
                reverse(&chars, start: start, end: i)
                start = i + 2
            }
        }
        let result = String(chars).split(separator: " ")
        return result.joined(separator: " ")
    }
}
