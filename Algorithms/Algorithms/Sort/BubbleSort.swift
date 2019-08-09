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
        for j in i+1..<array.count {
            if array[i] > array[j] {
                array.swapAt(i, j)
            }
        }
    }
    return array
}

