We can practice this problem by clicking on this link.
>（  https://leetcode.com/problems/maximum-subarray/ ）
# Description:
 <p> Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

A subarray is a contiguous part of an array. </p> 

**example 1:**
```
Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.
```

**example 2:**
```
Input: nums = [1]
Output: 1
```

**example 3:**
```
Input: nums = [5,4,-1,7,8]
Output: 23
```

**Constraints:**
```
1 <= nums.length <= 105
-104 <= nums[i] <= 104
```

 ### Solution

```Python
class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        choices = nums[0]
        prefix = 0
        for num in nums:
            if prefix < 0:
                prefix = 0
            prefix += num
            choices = max(choices, prefix)
        
        return choices
        
Time complexity: O(N) Space complexity: O(1)
```
