//
//  LinkedListCycle.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/8.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class LinkedListCycle {
    func hasCycle(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil {
            return false
        }
        var slow: ListNode? = head
        var fast: ListNode? = head
        while slow != nil && fast != nil {
            slow = slow?.next
            if (fast?.next == nil) {
                return false
            }
            fast = fast?.next?.next
            if (slow == fast) {
                return true
            }
        }
        return false
    }
}
