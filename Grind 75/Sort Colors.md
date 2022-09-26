We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/sort-colors/ ）
# Description:
 <p> Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

You must solve this problem without using the library's sort function. </p> 

**example 1:**
```
Input: nums = [2,0,2,1,1,0]
Output: [0,0,1,1,2,2]
```

**example 2:**
```
Input: nums = [2,0,1]
Output: [0,1,2]
```

**Constraints:**
```
n == nums.length
1 <= n <= 300
nums[i] is either 0, 1, or 2.
```

 ### Solution 1

```Python
class Solution:
    def sortColors(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        for i in range(len(nums)):
            for j in range(i, len(nums) - 1):
                if nums[j] < nums[j + 1]:
                    nums[j], nums[j + 1] = nums[j + 1], nums[j]
            if nums[i] > nums[-1]:
                nums[i], nums[-1] = nums[-1], nums[i]

        return nums
    
Time complexity: O(N^2)  Space complexity: O(1)
```
