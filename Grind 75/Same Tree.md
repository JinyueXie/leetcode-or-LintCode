We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/469/ or https://leetcode.com/problems/same-tree/ ）
# Description:
 <p> Given the roots of two binary trees p and q, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical, and the nodes have the same value. </p> 
**example 1:**
```
Input: p = [1,2,3], q = [1,2,3]
Output: true
```

**example 2:**
```
Input: n = 1, bad = 1
Input: p = [1,2], q = [1,null,2]
Output: false
```

**example 3:**
```
Input: p = [1,2,1], q = [1,1,2]
Output: false
```

**Constraints:**
```
The number of nodes in both trees is in the range [0, 100].
-104 <= Node.val <= 104
```

 ### Solution

```Python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def isSameTree(self, p: Optional[TreeNode], q: Optional[TreeNode]) -> bool:
        if p==None and q==None:
            return True
        if p==None or q==None:
            return False
        return (p.val== q.val) and self.isSameTree(p.left, q.left) and self.isSameTree(p.right, q.right)

           
Time complexity: O(M + N)
```
