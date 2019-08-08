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
        var fast: ListNode? = head?.next
        while slow == fast {
            if (fast == nil || fast?.next == nil) {
                return false
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return true
    }
}
