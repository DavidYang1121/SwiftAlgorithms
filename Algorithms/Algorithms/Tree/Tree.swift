//
//  Tree.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/12.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init(_ val: Int) {
        self.val = val
    }
}


class Tree {
    
    func maxDepth(root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        return max(maxDepth(root: root.left), maxDepth(root: root.right)) + 1
    }
    
    func isValidBST(root: TreeNode?) -> Bool {
        return _helper(root, min: nil, max: nil)
    }
    
    private func _helper(_ root: TreeNode?, min: Int?, max: Int?) -> Bool {
        guard let root = root else {
            return true
        }
        
        if let min = min, root.val <= min {
            return false
        }
        if let max = max, root.val >= max {
            return false
        }
        
        return _helper(root.left, min: min, max: root.val) && _helper(root.right, min: root.val, max: max)
    }
    
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        guard let root = root else {
            return result
        }
        result.append(root.val)
        result.append(contentsOf: preorderTraversal(root.left))
        result.append(contentsOf:  preorderTraversal(root.right))
        return result
    }
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        guard let root = root else {
            return result
        }
        result.append(contentsOf: inorderTraversal(root.left))
        result.append(root.val)
        result.append(contentsOf: inorderTraversal(root.right))
        return result
    }
    
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        guard let root = root else {
            return result
        }
        result.append(contentsOf: postorderTraversal(root.left))
        result.append(contentsOf: postorderTraversal(root.right))
        result.append(root.val)
        return result
    }
}

