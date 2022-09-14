We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/97/ or https://leetcode.com/problems/maximum-depth-of-binary-tree/ ）
# Description:
 <p> Given the root of a binary tree, return its maximum depth.

A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.</p> 

**example 1:**
```
Input: root = [3,9,20,null,null,15,7]
Output: 3
```

**example 2:**
```
Input: root = [1,null,2]
Output: 2
```

**Constraints:**
```
The number of nodes in the tree is in the range [0, 104].
-100 <= Node.val <= 100
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
    @return: An integer
    """
    def max_depth(self, root: TreeNode) -> int:
        if not root:
            return 0
        
        def dfs(root):
            if not root:
                return 0
            
            left_depth = dfs(root.left)
            right_depth = dfs(root.right)
            maxDepth = max(left_depth, right_depth) + 1
        
            return maxDepth

        return dfs(root)

Time complexity: O(N) Space complexity: O(1)
```
