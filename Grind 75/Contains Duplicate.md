We can practice this problem by clicking on this link.
>（https://www.lintcode.com/problem/1320/ or https://leetcode.com/problems/contains-duplicate/ ）
# Description:
 <p> Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.</p> 

**example 1:**
```
Input: nums = [1,2,3,1]
Output: true
```

**example 2:**
```
Input: nums = [1,2,3,4]
Output: false
```

**Constraints:**
```
1 <= nums.length <= 105
-109 <= nums[i] <= 109
```

 ### Solution

```Python
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        return True if len(set(nums)) != len(nums) else False
        
Time complexity: O(N) 
```
