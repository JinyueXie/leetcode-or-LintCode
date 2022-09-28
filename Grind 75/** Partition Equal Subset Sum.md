We can practice this problem by clicking on this link.
>（  https://leetcode.com/problems/partition-equal-subset-sum/ ）
# Description:
 <p> Given a non-empty array nums containing only positive integers, find if the array can be partitioned into two subsets such that the sum of elements in both subsets is equal.
  </p> 
**example 1:**
```
Input: nums = [1,5,11,5]
Output: true
Explanation: The array can be partitioned as [1, 5, 5] and [11].
```
**example 2:**
```
Input: nums = [1,2,3,5]
Output: false
Explanation: The array cannot be partitioned into equal sum subsets.
```


**Constraints:**
```
1 <= nums.length <= 200
1 <= nums[i] <= 100
```

 ### Solution

class Solution:
    def canPartition(self, nums: List[int]) -> bool:
        if sum(nums) % 2:
            return False

        dp = {0}
        for num in nums:

            res = set()
            for item in dp:
                res.add(item)
                res.add(num + item)
            dp = res
        return sum(nums) // 2 in dp

           
Time complexity:  O(N^2) Space complexity: O(N)
```
