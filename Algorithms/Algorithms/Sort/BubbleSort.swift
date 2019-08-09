//
//  BubbleSort.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/9.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

func bubbleSort<T: Comparable>(_ array: inout [T]) -> [T] {
    guard array.count > 1 else { return array }
    for i in 0..<array.count {
        var isExchanged = false
        for j in 0..<(array.count - i - 1) {
            if array[j] > array[j + 1] {
                array.swapAt(j, j + 1)
                isExchanged = true
            }
        }
        if !isExchanged {
            break
        }
    }
    return array
}

