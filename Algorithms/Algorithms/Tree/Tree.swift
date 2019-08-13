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
    
    //MARK: - 最大深度
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        return max(maxDepth(root.left), maxDepth(root.right)) + 1
    }
    
    //MARK: - 最小深度
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        let left = minDepth(root.left)
        let right = minDepth(root.right)
        return (left == 0 || right == 0) ? left + right + 1 : min(left, right) + 1        
    }
    
    //MARK: - 验证二叉搜索树
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
    
    //MARK: - 前序遍历
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
    
    func preorderTraversal2(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        var stack: [TreeNode] = []
        var node = root
        while !stack.isEmpty || node != nil {
            if node != nil {
                result.append(node!.val)
                stack.append(node!)
                node = node?.left
            } else {
               node = stack.removeLast().right
            }
        }
        return result
    }
    
    //MARK: - 中序遍历
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
    
    func inorderTraversal2(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        var stack = [TreeNode]()
        var node = root
        while !stack.isEmpty || node != nil {
            if node != nil {
                stack.append(node!)
                node = node?.left
            } else {
                node = stack.removeLast()
                res.append(node!.val)
                node = node?.right
            }
        }
        return res
    }
    
    //MARK: - 后序遍历
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
    
    func postorderTraversal2(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        var stack = [TreeNode]()
        var node = root
        while !stack.isEmpty || node != nil {
            if node != nil {
                stack.append(node!)
                res.insert(node!.val, at: 0)
                node = node?.right
            } else {
                node = stack.removeLast().left
            }
        }
        return res
    }
    
    //MARK: - 层次遍历（广度优先搜索）
    func levelOrder(root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        var queue = [TreeNode]()
        if let root = root {
            queue.append(root)
        }
        while !queue.isEmpty {
            var level = [Int]()
            let size = queue.count
            for _ in 0..<size {
                let cur = queue.removeFirst()
                level.append(cur.val)
                if let left = cur.left {
                    queue.append(left)
                }
                if let right = cur.right {
                    queue.append(right)
                }
            }
            res.append(level)
        }
        return res
    }
}

