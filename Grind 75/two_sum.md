We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/56/ or https://leetcode.com/problems/two-sum/ ）
# Description:
 <p> Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.</p> 

**example 1:**
```
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
```

**example 2:**
```
Input: nums = [3,2,4], target = 6
Output: [1,2]
```

**example 3:**
```
Input: nums = [3,3], target = 6
Output: [0,1]
```


 ### Solution 1

```Python 
from typing import (
    List,
)

class Solution:
    """
    @param numbers: An array of Integer
    @param target: target = numbers[index1] + numbers[index2]
    @return: [index1, index2] (index1 < index2)
    """
    def two_sum(self, numbers: List[int], target: int) -> List[int]:
        if not numbers:
            return []
        n = len(numbers)
        for i in range(n):
            for j in range(i + 1, n):
                if numbers[i] + numbers[j] == target:
                    return [i, j]  
                    
Time complexity: O(N^2)
```
 ### Solution 2

```Python 
from typing import (
    List,
)

class Solution:
    """
    @param numbers: An array of Integer
    @param target: target = numbers[index1] + numbers[index2]
    @return: [index1, index2] (index1 < index2)
    """
    def two_sum(self, nums: List[int], target: int) -> List[int]:
        Hashmap = {}
    for index, value in enumerate(nums):
        key = target - value
        if key in Hashmap:
            return [Hashmap[key], index]
        else:
            Hashmap[value] = index
            
Time complexity: O(N)
```
