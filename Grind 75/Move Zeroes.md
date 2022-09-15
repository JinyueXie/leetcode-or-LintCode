We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/539/ or https://leetcode.com/problems/move-zeroes/ ）
# Description:
 <p> Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Note that you must do this in-place without making a copy of the array. </p> 
**example 1:**
```
Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]
```

**example 2:**
```
Input: nums = [0]
Output: [0]
```

**example 2:**
```
Input: root = []
Output: []
```

**Constraints:**
```
1 <= nums.length <= 104
-231 <= nums[i] <= 231 - 1
```

 ### Solution 1

```Python
class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        for num in nums:
            if num == 0:
                nums.remove(num)
                nums.append(0)
        
Time complexity: O(N) Space complexity: O(1)
```
 ### Solution 2

```Python
class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        slow = 0
        for fast in range(len(nums)):
            if nums[fast] != 0 and nums[slow] == 0:
                nums[fast], nums[slow] = nums[slow], nums[fast]
            if nums[slow] != 0:
                slow += 1
        
Time complexity: O(N) Space complexity: O(1)
```
