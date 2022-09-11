We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/901/ ）

# Description:
 <p> Given a non-empty binary search tree and a target value, find k values in the BST that are closest to the target. This is Google interview question.</p> 

**example 1:**
```
Input:
{1}
0.000000
1
Output:
[1]
Explanation：
Binary tree {1},  denote the following structure:
 1
```

**example 2:**
```
Input:
{3,1,4,#,2}
0.275000
2
Output:
[1,2]
Explanation：
Binary tree {3,1,4,#,2},  denote the following structure:
  3
 /  \
1    4
 \
  2
```

 ### Solution

```Python
from typing import (
    List,
)
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
    @param root: the given BST
    @param target: the given target
    @param k: the given k
    @return: k values in the BST that are closest to the target
             we will sort your return value in output
    """
    def closest_k_values(self, root: TreeNode, target: float, k: int) -> List[int]:
        stack = []
        self.dfs(stack, root, target, k)
        return stack
    
    def dfs(self, stack , root, target, k):
        if root:
            self.dfs(stack, root.left, target, k)
            if len(stack) < k:
                stack.append(root.val)
            else:
                if abs(stack[0] - target) > abs(root.val - target):
                    stack.pop(0)
                    stack.append(root.val)
                else:
                    return
            
            self.dfs(stack, root.right, target, k)
```

Time complexity: O(N）， Space complexity: O(N)
