//
//  Queue.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/12.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

struct Queue<Element> {
    
    var data: [Element]
    
    var isEmpty: Bool {
        get { return data.count > 0 ? false : true }
    }
        
    init() {
        data = [Element]()
    }
    
    mutating func enqueue(item: Element) {
        data.append(item)
    }
    
   @discardableResult mutating func dequeue() -> Element? {
        if data.count > 0 {
            let last = data.removeFirst()
            return last
        }
        return nil
    }
}
