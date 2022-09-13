We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/binary-search/ ）
# Description:
 <p> Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

You must write an algorithm with O(log n) runtime complexity.</p> 

**example 1:**
```
Input: nums = [-1,0,3,5,9,12], target = 9
Output: 4
Explanation: 9 exists in nums and its index is 4
```

**example 2:**
```
Input: nums = [-1,0,3,5,9,12], target = 2
Output: -1
Explanation: 2 does not exist in nums so return -1
```

**Constraints:**
```
1 <= nums.length <= 104
-104 < nums[i], target < 104
All the integers in nums are unique.
nums is sorted in ascending order.
```

 ### Solution

```Python
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        if not nums:
            return -1 
        
        n = len(nums)
        left, right = 0, n - 1
        while left + 1 < right:
            Mid = (left + right) // 2
            if nums[Mid] < target:
                left = Mid
            elif nums[Mid] > target:
                right = Mid
            else:
                return Mid
        
        if nums[left] == target:
            return left
        if nums[right] == target:
            return right
        
        return -1
        
Time complexity: O(logN) Space complexity: O(1)
```
