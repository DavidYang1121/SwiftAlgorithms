//
//  SelectionSort.swift
//  Algorithms
//
//  Created by DavidYang on 2019/11/28.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

func selectionSort<T: Comparable>(_ array: inout [T]) {
    for i in 0..<array.count {
        var minIndex = i
        for j in i+1..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        if minIndex != i {
            array.swapAt(i, minIndex)
        }
    }
}
