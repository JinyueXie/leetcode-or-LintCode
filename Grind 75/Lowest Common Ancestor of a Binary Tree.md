We can practice this problem by clicking on this link.
>（  https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/ ）
# Description:
 <p>  Given a binary tree, find the lowest common ancestor (LCA) of two given nodes in the tree.

According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”
  </p> 
  
**example 1:**
```
Input: root = [3,5,1,6,2,0,8,null,null,7,4], p = 5, q = 1
Output: 3
Explanation: The LCA of nodes 5 and 1 is 3.
```
**example 2:**
```
Input: root = [3,5,1,6,2,0,8,null,null,7,4], p = 5, q = 4
Output: 5
Explanation: The LCA of nodes 5 and 4 is 5, since a node can be a descendant of itself according to the LCA definition.
```

**example 3:**
```
Input: root = [1,2], p = 1, q = 2
Output: 1
```

**Constraints:**
```
The number of nodes in the tree is in the range [2, 105].
-109 <= Node.val <= 109
All Node.val are unique.
p != q
p and q will exist in the tree.
```

 ### Solution 1

```Python
class Solution:
    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
        if root.val == p.val:
            return p
        if root.val == q.val:
            return q
        if root.left and root.right:
            if self.dfs(root.left, p) and self.dfs(root.right, q):
                return root
            elif self.dfs(root.left, q) and self.dfs(root.right, p):
                return root
            elif self.dfs(root.left, p) and self.dfs(root.left, q):
                return self.lowestCommonAncestor(root.left, p, q)
            elif self.dfs(root.right, p) and self.dfs(root.right, q):
                return self.lowestCommonAncestor(root.right, p, q)

        if not root.right:
            return self.lowestCommonAncestor(root.left, p, q)
        if not root.left:
            return self.lowestCommonAncestor(root.right, p, q)

    def dfs(self, root, p):
        if not root:
            return False
        return root.val == p.val or self.dfs(root.left, p) or self.dfs(root.right, p)

           
Time complexity:  O(N) Space complexity: O(h)
```


 ### Solution 2

```Python
class Solution:
    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
        if not root or root == p or root == q:
            return root

        x = self.lowestCommonAncestor(root.left, p, q)
        y = self.lowestCommonAncestor(root.right, p, q)
        if (x and y) or root in [p, q]:
            return root
        else:
            return x or y
            
    Time complexity:  O(N)  Space complexity: O(h)
```
