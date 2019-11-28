//
//  KthLargestElement.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/7.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class KthLargestElement {
  static  func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    let nums = nums.sorted { (first, second) -> Bool in
            first > second
        }
        if (k - 1 >= 0 && k - 1 < nums.count) {
            return nums[k - 1]
        }
       return 0
    }
}
