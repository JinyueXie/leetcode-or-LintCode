We can practice this problem by clicking on this link.
>（https://leetcode.com/problems/product-of-array-except-self/  ）
# Description:
 <p> Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation. </p> 

**example 1:**
```
Input: nums = [1,2,3,4]
Output: [24,12,8,6]
```

**example 2:**
```
Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]
```

**Constraints:**
```
2 <= nums.length <= 105
-30 <= nums[i] <= 30
The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
```

 ### Solution

```Python
class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        res = [1]*len(nums)
        pre, post = 1, 1
        for i in range(len(nums)):
            res[i] = pre
            pre *= nums[i]

        for j in range(len(nums) - 1, -1, -1):
            res[j] *= post
            post *= nums[j]

        return res
           
Time complexity: O(N) Space complexity: O(1)
```
