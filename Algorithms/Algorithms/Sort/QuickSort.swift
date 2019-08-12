//
//  QuickSort.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/9.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

 func quickSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    let pivot = array[array.count / 2]
    let less = array.filter{ $0 < pivot }
    let equal = array.filter{ $0 == pivot }
    let greater = array.filter{ $0 > pivot }
    
    return quickSort(less) + equal + quickSort(greater)
}

func quickSort2<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    let pivot = array[array.count / 2]
    var less: [T] = []
    var equal: [T] = []
    var greater: [T] = []
    for (_, item) in array.enumerated() {
        if item < pivot {
            less.append(item)
        } else if item == pivot {
            equal.append(item)
        } else {
            greater.append(item)
        }
    }
    return quickSort2(less) + equal + quickSort2(greater)
}

func partitionLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) -> Int {
    let pivot = a[high]
    
    var i = low
    for j in low..<high {
        if a[j] <= pivot {
            a.swapAt(i, j)
            i += 1
        }
        print(a)
    }
    
    a.swapAt(i, high)
    return i
}

func quicksortLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) {
    if low < high {
        let p = partitionLomuto(&a, low: low, high: high)
        quicksortLomuto(&a, low: low, high: p - 1)
        quicksortLomuto(&a, low: p + 1, high: high)
    }
}

