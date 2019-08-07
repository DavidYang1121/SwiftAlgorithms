//
//  MajorityElement.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/7.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var dic: [Int: Int] = [:]
        var maxTimes = 1
        var elememt = nums[0]
        for (_, item) in nums.enumerated() {
            if let value = dic[item] {
               dic[item] = value + 1
                if (value + 1 > maxTimes) {
                    maxTimes = value + 1
                    elememt = item
                }
            } else {
               dic[item] = 1
            }
        }
        if maxTimes > nums.count / 2 {
            return elememt
        }
        return 0
    }
}

