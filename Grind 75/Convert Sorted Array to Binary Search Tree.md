We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/ ）
# Description:
 <p> Given an integer array nums where the elements are sorted in ascending order, convert it to a height-balanced binary search tree.

A height-balanced binary tree is a binary tree in which the depth of the two subtrees of every node never differs by more than one.</p> 
**example 1:**
```
Input: nums = [-10,-3,0,5,9]
Output: [0,-3,9,-10,null,5]
Explanation: [0,-10,5,null,-3,null,9] is also accepted:
```

**example 2:**
```
Input: nums = [1,3]
Output: [3,1]
Explanation: [1,null,3] and [3,1] are both height-balanced BSTs.
```


**Constraints:**
```
1 <= nums.length <= 104
-104 <= nums[i] <= 104
nums is sorted in a strictly increasing order.
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
    def sortedArrayToBST(self, nums: List[int]) -> Optional[TreeNode]:
        if not nums:
            return None
        
        left, right = 0, len(nums)
        mid = (right - left) // 2

        Node = ListNode(nums[mid])
        left_Node = self.sortedArrayToBST(nums[left: mid])
        right_Node = self.sortedArrayToBST(nums[mid + 1: right])
        Node.left = left_Node
        Node.right = right_Node
        return Node
        
Time complexity: O(N) Space complexity: O(logN)

O(n) time because we visit each element of the array only once, O(n) space because we use stack for recursion which can go as deep as the height of the finished tree which is O(lg2(n))
```
