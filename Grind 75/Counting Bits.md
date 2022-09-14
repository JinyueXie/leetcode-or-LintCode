We can practice this problem by clicking on this link.
>（  https://www.lintcode.com/problem/664/ or https://leetcode.com/problems/counting-bits/ ）
# Description:
 <p> Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), ans[i] is the number of 1's in the binary representation of i. </p> 

**example 1:**
```
Input: n = 2
Output: [0,1,1]
Explanation:
0 --> 0
1 --> 1
2 --> 10

```

**example 2:**
```
Input: n = 5
Output: [0,1,1,2,1,2]
Explanation:
0 --> 0
1 --> 1
2 --> 10
3 --> 11
4 --> 100
5 --> 101
```

**Constraints:**
```
0 <= n <= 105
```

 ### Solution 1

```Python
from typing import (
    List,
)

class Solution:
    """
    @param num: a non negative integer number
    @return: an array represent the number of 1's in their binary
    """
    def count_bits(self, num: int) -> List[int]:
        if num == 0:
            return [0]
        if num == 1:
            return [0, 1]
        
        x = 2**int(math.log(num)/ math.log(2)) - 1
        half_list = self.count_bits(x)
        cur = []
        for i in range(num - x):
            cur.append(half_list[i] + 1)
        return half_list + cur
           

```

 ### Solution 2

```Python

from typing import (
    List,
)

class Solution:
    """
    @param num: a non negative integer number
    @return: an array represent the number of 1's in their binary
    """
    def count_bits(self, n: int) -> List[int]:
        arr = [0]
        while len(arr) < n + 1:
            arr += [1 + i for i in arr]
        return arr[ : n + 1]

```
 ### Solution 3
 ```Python
 
 
from typing import (
    List,
)
class Solution:
    """
    @param num: a non negative integer number
    @return: an array represent the number of 1's in their binary
    """
    def count_bits(self, n: int) -> List[int]:
        ans = []
        for i in range(n + 1):
            bin_i = bin(i)
            ans.append(bin_i.count('1'))
        return ans
        
Time complexity: O(n)   Space complexity: O(n)     
 ```
