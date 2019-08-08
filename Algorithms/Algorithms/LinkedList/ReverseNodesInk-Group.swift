//
//  ReverseNodesInk-Group.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/8.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class ReverseNodesInkGroup {
    static func reverse(_ pre: ListNode, _ k: Int) -> ListNode {
        let last = pre.next!
        var curr = last.next
        var i = 1
        while i < k  {
            i += 1
            last.next = curr?.next
            curr?.next = pre.next
            pre.next = curr
            curr = last.next
            
        }
        return last
    }
    
    
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil, k > 1 else {
            return head
        }
        var i = 0
        let dummy = ListNode(0)
        dummy.next = head
        var pre = dummy
        var curr = head
        while curr != nil {
            i += 1
            if i % k == 0 {
                pre = ReverseNodesInkGroup.reverse(pre, k)
                curr = pre.next
            } else {
                curr = curr!.next
            }
        }
        return dummy.next
    }
}
