We can practice this problem by clicking on this link.
>（https://www.lintcode.com/problem/175/ or https://leetcode.com/problems/invert-binary-tree/ ）
# Description:
 <p> Given the root of a binary tree, invert the tree, and return its root.</p> 

**example 1:**
```
Input: root = [4,2,7,1,3,6,9]
Output: [4,7,2,9,6,3,1]
```

**example 2:**
```
Input: root = [2,1,3]
Output: [2,3,1]
```

**example 2:**
```
Input: root = []
Output: []
```

**Constraints:**
```
The number of nodes in the tree is in the range [0, 100].
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
    @param root: a TreeNode, the root of the binary tree
    @return: nothing
    """
    def invert_binary_tree(self, root: TreeNode):
        if not root:
            return None
        root.left, root.right = root.right, root.left

        root.left = self.invert_binary_tree(root.left)
        root.right = self.invert_binary_tree(root.right)

        return root
        
Time complexity: O(N) Space complexity: O(N)
```
