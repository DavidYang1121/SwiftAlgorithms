//
//  LinkedList.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/12.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class ListNode: NSObject {
     var val: Int
     var next: ListNode?
     init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class LinkedList {
    var head: ListNode?
    var tail: ListNode?
    
    func appendToHead(_ val: Int) {
        let node = ListNode(val)
        if let _ = head {
            node.next = head
        } else {
            tail = node
        }
        head = node
    }
    
    func appendToTail(_ val: Int) {
        let node = ListNode(val)
        if let tail = tail {
            tail.next = node
        } else {
            head = node
        }
        tail = node
    }
}
