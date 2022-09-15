We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/196/ or https://leetcode.com/problems/missing-number/  ）
# Description:
 <p> Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.</p>  
**example 1:**
```
Input: nums = [3,0,1]
Output: 2
Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.
```

**example 2:**
```
Input: nums = [0,1]
Output: 2
Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.
```

**example 3:**
```
Input: nums = [9,6,4,2,3,5,7,0,1]
Output: 8
Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.
```

**Constraints:**
```
n == nums.length
1 <= n <= 104
0 <= nums[i] <= n
All the numbers of nums are unique.
```

 ### Solution

```Python
from typing import (
    List,
)

class Solution:
    """
    @param nums: An array of integers
    @return: An integer
    """
    def find_missing(self, nums: List[int]) -> int:
        number_length = len(nums)
        sum_nums = sum(nums)
        actual_sum = (1 + number_length)* (number_length / 2)
        return int(actual_sum - sum_nums)
        
Time complexity: O(N) Space complexity: O(1)
```
