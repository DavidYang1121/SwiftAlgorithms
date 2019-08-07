//
//  MergeSortedArray.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/7.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class MergeSortedArray {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
       nums1 = Array(nums1[0..<m])
       nums1 += nums2
       nums1 = nums1.sorted()
    }
}
