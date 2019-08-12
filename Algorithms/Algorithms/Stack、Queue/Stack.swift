//
//  File.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/12.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

struct Stack<Element> {
    
    private var data: [Element]
    
    var isEmpty: Bool {
        get { return data.count > 0 ? false : true }
    }
    
    var size: Int {
        get { return data.count }
    }
    
    var peek: Element? {
        get { return data.last }
    }
    
    init() {
        data = [Element]()
    }
    
    mutating func push(item: Element) {
        data.append(item)
    }
    
    @discardableResult mutating func pop() -> Element? {
        return data.popLast()
    }
    
    func printAll() {
        print(data)
    }
}
