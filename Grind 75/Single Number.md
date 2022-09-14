We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/82/ or https://leetcode.com/problems/single-number/  ）
# Description:
 <p>Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

You must implement a solution with a linear runtime complexity and use only constant extra space.

 </p> 
**example 1:**
```
Input: nums = [2,2,1]
Output: 1
```

**example 2:**
```
Input: nums = [4,1,2,1,2]
Output: 4
```
**example 3:**
```
Input: nums = [1]
Output: 1
```

**Constraints:**
```
1 <= nums.length <= 3 * 104
-3 * 104 <= nums[i] <= 3 * 104
Each element in the array appears twice except for one element which appears only once.
```

 ### Solution 1

```Python
from typing import (
    List,
)
from collections import Counter
class Solution:
    """
    @param a: An integer array
    @return: An integer
    """
    def single_number(self, a: List[int]) -> int:
        dict_a = Counter(a)
        dict_a = sorted(dict_a.items(), key = lambda x: x[1])
        return dict_a[0][0]
    
           
Time complexity: O(NlogN) Space complexity: O(1)
```

 ### Solution 2

```Python
class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        xor = 0
        for num in nums:
            xor ^= num
        
        return xor
           
Time complexity: O(N) Space complexity: O(1)
```

```
It is hard to grasp the intuition behind solution #4, bear in mind that XOR operation is commutative and associative, meaning that when we xor all element in the nums list, we can rearrange them so that two identical element sitting next to each other and xor ing them result in 0.

Example:
1 xor 2 xor 3 xor 1 xor 2 xor 3 xor 4 = (1 xor 1) xor (2 xor 2) xor (3 xor 3) xor 4 (commutative & associative)
= 0 xor 0 xor 0 xor 4
= 4
```
