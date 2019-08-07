//
//  ThreeSum.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/7.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class Solution {
    static func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else {return []}
        let nums = nums.sorted()
        var result: [[Int]] = []
        for i in 0..<(nums.count - 2) {
            if (i == 0 || (i > 0 && nums[i] != nums[i-1])) {
                var j = i + 1
                var k = nums.count - 1
                while (j < k) {
                    let target = nums[i] + nums[j] + nums[k]
                    if (target == 0) {
                        result.append([nums[i], nums[j], nums[k]])
                        while (j < k && nums[j] == nums[j + 1]) {
                            j += 1
                        }
                        while (j < k && nums[k] == nums[k - 1]) {
                            k -= 1
                        }
                        j += 1
                        k -= 1
                    } else if (target < 0) {
                        j += 1
                    } else {
                        k -= 1
                    }
                }
            }
        }
        return result
    }
}
