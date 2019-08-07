//
//  SingleNumber.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/7.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class SingleNumber {
    func singleNumber(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return nums[0]
        }
        let nums = nums.sorted()
        var times = 1
        for i in 1..<nums.count {
            if (nums[i] != nums[i - 1]) {
                if times == 1 {
                    return nums[i - 1]
                }
                times = 1
            } else {
                times += 1
            }
        }
        return nums[nums.count - 1]
    }
    
    func singleNumberTwo(_ nums: [Int]) -> Int {
        var result = 0
        for i in 0..<nums.count {
            result ^= nums[i]
        }
        return result
    }
}
