We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/93/ or https://leetcode.com/problems/balanced-binary-tree/  ）
# Description:
 <p> Given a binary tree, determine if it is height-balanced.

For this problem, a height-balanced binary tree is defined as:

a binary tree in which the left and right subtrees of every node differ in height by no more than 1. </p> 
**example 1:**
```
Input: root = [3,9,20,null,null,15,7]
Output: true
```

**example 2:**
```
Input: root = [1,2,2,3,3,null,null,4,4]
Output: false
```
**example 3:**
```
Input: root = []
Output: true
```

**Constraints:**
```
The number of nodes in the tree is in the range [0, 5000].
-104 <= Node.val <= 104
```

 ### Solution

```Python
from lintcode import (
    TreeNode,
)

"""
Definition of TreeNode:
class TreeNode:
    def __init__(self, val):
        self.val = val
        self.left, self.right = None, None
"""

class Solution:
    """
    @param root: The root of binary tree.
    @return: True if this Binary tree is Balanced, or false.
    """
    def is_balanced(self, root: TreeNode) -> bool:
        def dfs(root):
            if not root:
                return 0, True
            
            left_height, left_results = dfs(root.left)
            right_height, right_results = dfs(root.right)
            height = max(left_height, right_height) + 1
            if not left_results or not right_results or abs(left_height - right_height) > 1:
                return height, False
            
            return height, True

        height, results = dfs(root)
        return results
           
Time complexity: O(N) Space complexity: O(N)
```
