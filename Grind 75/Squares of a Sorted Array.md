We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/squares-of-a-sorted-array/ ）
# Description:
 <p> Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order. </p>  
 
**example 1:**
```
Input: nums = [-4,-1,0,3,10]
Output: [0,1,9,16,100]
Explanation: After squaring, the array becomes [16,1,0,9,100].
After sorting, it becomes [0,1,9,16,100].
```

**example 2:**
```
Input: nums = [-7,-3,2,3,11]
Output: [4,9,9,49,121]
```


**Constraints:**
```
1 <= nums.length <= 104
-104 <= nums[i] <= 104
nums is sorted in non-decreasing order.
```

 ### Solution 1

```Python
from typing import (
    List,
)

class Solution:
    """
    @param a: The array A.
    @return: The array of the squares.
    """
    def square_array(self, nums: List[int]) -> List[int]:
        return [num**2 for num in sorted(nums, key = lambda x: abs(x))]
    
           
Time complexity: O(NlogN)
```
