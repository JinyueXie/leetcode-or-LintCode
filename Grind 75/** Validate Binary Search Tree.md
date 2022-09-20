We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/validate-binary-search-tree/ ）
# Description:
 <p>  Given the root of a binary tree, determine if it is a valid binary search tree (BST).

A valid BST is defined as follows:

The left subtree of a node contains only nodes with keys less than the node's key.
The right subtree of a node contains only nodes with keys greater than the node's key.
Both the left and right subtrees must also be binary search trees.
  </p> 
  
**example 1:**
```
Input: root = [2,1,3]
Output: true
```
**example 2:**
```
Input: root = [5,1,4,null,null,3,6]
Output: false
Explanation: The root node's value is 5 but its right child's value is 4.
```


**Constraints:**
```
The number of nodes in the tree is in the range [1, 104].
-231 <= Node.val <= 231 - 1
```

 ### Solution 1

```Python
class Solution:
    def isValidBST(self, root: Optional[TreeNode]) -> bool:
        results = self.in_order_traversal(root)
        for i in range(1, len(results)):
            if results[i] <= results[i - 1]:
                return False

        return True

    def in_order_traversal(self, root):
        res = []
        if root:
            res = self.in_order_traversal(root.left)
            res.append(root.val)
            res += self.in_order_traversal(root.right)
        return res
           
Time complexity:  O(N) Space complexity: O(h) h is tree height
```
 ### Solution 2
```Python

def inOrderTra(self, root):
    if(root == None):
        return []
    return self.inOrderTra(root.left) + [root.val] + self.inOrderTra(root.right)

    
def isValidBST(self, root: Optional[TreeNode]) -> bool:
    order = self.inOrderTra(root)
    for i in range(len(order) - 1):
        if(order[i] >= order[i+1]):
            return False
    return True
    
               
Time complexity:  O(N) Space complexity: O(h) h is tree height
```
