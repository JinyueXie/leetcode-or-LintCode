We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/1165/ or https://leetcode.com/problems/subtree-of-another-tree/  ）
# Description:
 <p> Given the roots of two binary trees root and subRoot, return true if there is a subtree of root with the same structure and node values of subRoot and false otherwise.

A subtree of a binary tree tree is a tree that consists of a node in tree and all of this node's descendants. The tree tree could also be considered as a subtree of itself. </p> 
**example 1:**
```
Input: root = [3,4,5,1,2], subRoot = [4,1,2]
Output: true
```

**example 2:**
```
Input: root = [3,4,5,1,2,null,null,null,null,0], subRoot = [4,1,2]
Output: false
```


**Constraints:**
```
The number of nodes in the root tree is in the range [1, 2000].
The number of nodes in the subRoot tree is in the range [1, 1000].
-104 <= root.val <= 104
-104 <= subRoot.val <= 104
```

 ### Solution 1

```Python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def isSubtree(self, root: Optional[TreeNode], subRoot: Optional[TreeNode]) -> bool:
        
        def the_same_tree(root, subRoot):
            if not root and not subRoot:
                return True
            if not root or not subRoot:
                return False
            
            if root.val == subRoot.val:
                return the_same_tree(root.left, subRoot.left) and the_same_tree(root.right, subRoot.right)
            else:
                return False
        
        if the_same_tree(root, subRoot):
            return True
        elif root.left and self.isSubtree(root.left, subRoot):
            return True
        elif root.right and self.isSubtree(root.right, subRoot):
            return True
        else:
            return False
           
Time complexity: O(N + M) Space complexity: O(N + M)
```
