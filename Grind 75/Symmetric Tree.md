We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/symmetric-tree/ ） 
# Description:
 <p> Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).</p> 
 
**example 1:**
```
Input: root = [1,2,2,3,4,4,3]
Output: true
```

**example 2:**
```
Input: root = [1,2,2,null,3,null,3]
Output: false
```

**Constraints:**
```
The number of nodes in the tree is in the range [1, 1000].
-100 <= Node.val <= 100
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
    def isSymmetric(self, root: Optional[TreeNode]) -> bool:
        if not root:
            return True
            
        def isSymmetric(left, right):
            if not left and not right:
                return True

            if not left or not right:
                return False
            
            return left.val == right.val and isSymmetric(left.left, right.right) and isSymmetric(left.right, right.left)
        
        return isSymmetric(root.left, root.right)

        
Time complexity: O(N) Space complexity: O(N)
```
