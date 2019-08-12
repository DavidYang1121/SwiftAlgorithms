//
//  InvertTree.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/11.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation


public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
          self.left = nil
          self.right = nil
      }
 }
 
class InvertTree {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        
        let left = root?.left
        let right = root?.right
        root?.left = invertTree(right)
        root?.right = invertTree(left)
        return root
    }
    
    func invertTree2(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        var stack = Stack<TreeNode>()
        stack.push(item: root!)
        while let node = stack.pop() {
            let left = node.left
            node.left = node.right
            node.right = left
            if node.left != nil {
                stack.push(item: node.left!)
            }
            if node.right != nil {
                stack.push(item: node.right!)
            }
        }
        return root
    }
    
}
