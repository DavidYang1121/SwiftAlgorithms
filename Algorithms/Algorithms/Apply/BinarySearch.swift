//
//  BinarySearch.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/13.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

func binarySearch(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, mid = 0, right = nums.count - 1
    while left <= right {
        mid = (right - left) / 2 + left
        if nums[mid] < target {
            left = mid + 1
        } else if nums[mid] > target {
            right = mid - 1
        } else {
            return mid
        }
    }
    return -1
}
