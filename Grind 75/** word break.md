We can practice this problem by clicking on this link.
>（  https://www.lintcode.com/problem/107/description or https://leetcode.com/problems/word-break/ ）
# Description:
 <p>  Given a string s and a dictionary of words dict, determine if s can be broken into a space-separated sequence of one or more dictionary words.
Because we have used stronger data, the ordinary DFS method can not pass this question now.
  </p> 
  
**example 1:**
```
Input:

s = "a"
dict = ["a"]
Output:

true
Explanation:

a is in the dict.
```
**example 2:**
```
Input:

s = "lintcode"
dict = ["lint", "code"]
Output:

true
Explanation:

Lintcode can be divided into lint and code.
```

**example 3:**
```
Input: candidates = [2], target = 1
Output: []
```


 ### Solution

```Python
from typing import (
    Set,
)

class Solution:
    """
    @param s: A string
    @param word_set: A dictionary of words dict
    @return: A boolean
    """
    def word_break(self, s: str, dict: Set[str]) -> bool:
        if not s:
            return True
        if not dict:
            return False
        n = len(s)
        dp = [False for _ in range(n + 1)]
        maxLen = max([len(w) for w in dict])
        dp[0] = True
        for i in range(1, n + 1):
            for j in range(max(i - maxLen, 0), i):
                if not dp[j]:
                    continue
                if s[j:i] in dict:
                    dp[i] = True
                    break
        return dp[n]
           
Time complexity:  O(N*3) Space complexity: O(N) 
```
