//
//  MergeSort.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/13.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else {
        return array
    }
    let middleIndex = array.count / 2
    let left = mergeSort(Array(array[0..<middleIndex]))
    let right = mergeSort(Array(array[middleIndex..<array.count]))
    return merge(left, right)
}

private func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var result: [T] = []
    var leftIndex = 0, rightIndex = 0
    while leftIndex < left.count || rightIndex < right.count {
        if leftIndex < left.count && rightIndex < right.count {
            if left[leftIndex] < right[rightIndex] {
                result.append(left[leftIndex])
                leftIndex += 1
            } else {
                result.append(right[rightIndex])
                rightIndex += 1
            }
        } else if leftIndex < left.count {
            result.append(left[leftIndex])
            leftIndex += 1
        } else {
            result.append(right[rightIndex])
            rightIndex += 1
        }
    }
    return result
}
