//
//  MergeTwoSortedLists.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/8.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class MergeTwoSortedLists {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if (l1 == nil) {
            return l2
        }
        if (l2 == nil) {
            return l1
        }
        let dummy: ListNode? = ListNode(0)
        var cur = dummy
        var l1 = l1
        var l2 = l2
        while l1 != nil && l2 != nil {
            if (l1!.val < l2!.val) {
                cur?.next = l1
                l1 = l1?.next
            } else {
                cur?.next = l2
                l2 = l2?.next
            }
            cur = cur?.next
        }
        if (l1 == nil) {
            cur?.next = l2
        } else {
            cur?.next = l1
        }
        return dummy?.next
    }
}
