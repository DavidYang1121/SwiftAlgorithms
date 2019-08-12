//
//  RemoveNthFromEnd.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/12.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class RemoveNthFromEnd {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        if let head = head, n >= 0 {
            let dummy = ListNode(0)
            dummy.next = head
            var fast: ListNode? = dummy
            var slow: ListNode? = dummy
            var i = 1
            while fast?.next != nil {
                fast = fast?.next
                if i > n {
                    slow = slow?.next
                }
                i += 1
            }
            slow?.next = slow?.next?.next
            return dummy.next
        }
        return nil
    }
}
