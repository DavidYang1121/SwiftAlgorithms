//
//  CountingSort.swift
//  Algorithms
//
//  Created by DavidYang on 2019/11/28.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation


func countingSort(_ a: inout [Int]) {
    guard a.count > 1 else {
        return
    }
    
    //找出范围[0-max]
    var max = a[0]
    for i in 1..<a.count {
        if a[i] > max {
            max = a[i]
        }
    }
    
    //生成(max + 1)个计数桶
    var counting = Array.init(repeating: 0, count: max + 1)
    for i in 0..<a.count {
        counting[a[i]] += 1
    }
    
    //还原排序数组
    var result: [Int] = []
    for i in 0..<counting.count {
        var value = counting[i]
        while value > 0 {
            result.append(i)
            value -= 1
        }
    }
    a = result
}
