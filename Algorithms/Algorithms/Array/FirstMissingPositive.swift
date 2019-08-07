
//
//  FirstMissingPositive.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/7.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class FirstMissingPositive {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var nums = nums
        for i in 0..<nums.count {
            while (nums[i] > 0 && nums[i] <= nums.count && nums[nums[i] - 1] != nums[i]) {
                nums.swapAt(nums[i] - 1, i)
            }
        }
        for i in 0..<nums.count {
            if (nums[i] != i + 1) {
                return i + 1
            }
        }
        return nums.count + 1
    }
}
