We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/46/ or https://leetcode.com/problems/majority-element/   ）
# Description:
 <p> Given an array nums of size n, return the majority element.

The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array. </p> 
**example 1:**
```
Input: nums = [3,2,3]
Output: 3
```
**example 1:**
```
Input: nums = [2,2,1,1,1,2,2]
Output: 2
```

**Constraints:**
```
n == nums.length
1 <= n <= 5 * 104
-109 <= nums[i] <= 109
```

 ### Solution 1

```Python
class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        hashmap = {}
        for num in nums:
            hashmap[num] = hashmap.get(num, 0) + 1
        
        for key in hashmap:
            if hashmap[key] > len(nums) // 2:
                return key
           
Time complexity: O(N)
```

 ### Solution 2

```Python
from typing import (
    List,
)
from collections import Counter
class Solution:
    """
    @param nums: a list of integers
    @return: find a  majority number
    """
    def majority_number(self, nums: List[int]) -> int:
        c = Counter(nums)
        return c.most_common()[0][0]
           
```

### related knowledge
> (https://docs.python.org/3/library/collections.html)

