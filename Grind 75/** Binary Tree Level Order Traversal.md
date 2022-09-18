We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/binary-tree-level-order-traversal/ ）
# Description:
 <p>  Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

  </p> 
**example 1:**
```
Input: root = [3,9,20,null,null,15,7]
Output: [[3],[9,20],[15,7]]
```
**example 2:**
```
Input: root = [1]
Output: [[1]]
```

**example 3:**
```
Input: root = []
Output: []
```

**Constraints:**
```
The number of nodes in the tree is in the range [0, 2000].
-1000 <= Node.val <= 1000
```

 ### Solution

```Python
class Solution:
    def levelOrder(self, root: Optional[TreeNode]) -> List[List[int]]:
        results = defaultdict(list)

        def dfs(node, level):
            if not node:
                return
            results[level].append(node.val)
            if node.left:
                dfs(node.left, level + 1)
            if node.right:
                dfs(node.right, level + 1)

        dfs(root, 0)
        return [value for key, value in results.items()]
           
Time complexity:  O(N) Space complexity: O(N)
```
