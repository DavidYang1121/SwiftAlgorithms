//
//  LinkedListCycleII.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/8.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class LinkedListCycleII {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        if (head == nil || head?.next == nil) {
            return nil
        }
        var slow = head
        var fast = head
        var isCycle = false
        while slow != nil && fast != nil {
            slow = slow?.next
            if (fast?.next == nil) {
                break
            }
            fast = fast?.next?.next
            if (fast == slow) {
                isCycle = true
                break
            }
        }
        if (!isCycle) {
            return nil
        }
        slow = head
        while slow != head {
            slow = slow?.next
            fast = fast?.next
        }
        return slow
    }
}
