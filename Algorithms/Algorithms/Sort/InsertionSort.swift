//
//  InsertionSort.swift
//  Algorithms
//
//  Created by DavidYang on 2019/11/28.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation


func insertionSort<T: Comparable>(_ array: inout [T]) {
    for i in 1..<array.count {
        let value = array[i]
        var j = i - 1
        while j >= 0 {
            if array[j] > value {
                array[j + 1] = array[j]
            } else {
                break
            }
            j -= 1
        }
        array[j + 1] = value
    }
}
