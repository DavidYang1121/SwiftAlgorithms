//
//  FindAllDuplicates.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/7.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class FindAllDuplicates {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else {
            return []
        }
        var result: [Int] = []
        let nums = nums.sorted()
        var times = 1
        for i in 1..<nums.count {
            if (nums[i] != nums[i - 1]) {
                times = 1
            } else {
                times += 1
                result.append(nums[i])
            }
        }
        return result
    }
}
