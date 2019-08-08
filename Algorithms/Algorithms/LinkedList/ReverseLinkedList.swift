//
//  ReverseLinkedList.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/8.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
 }
 
class ReverseLinkedList {
    func reverseList(_ head: ListNode?) -> ListNode? {
        let dummyNode = ListNode(0)
        var current = head
        while current != nil {
            let temp = current?.next
            current?.next = dummyNode.next
            dummyNode.next = current
            current = temp
        }
        return dummyNode.next
    }
}
