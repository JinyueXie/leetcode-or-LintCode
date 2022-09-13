We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/627/ or https://leetcode.com/problems/longest-palindrome/  ）
# Description:
 <p> Given a string s which consists of lowercase or uppercase letters, return the length of the longest palindrome that can be built with those letters.

Letters are case sensitive, for example, "Aa" is not considered a palindrome here.</p> 

**example 1:**
```
Input: s = "abccccdd"
Output: 7
Explanation: One longest palindrome that can be built is "dccaccd", whose length is 7.
```

**example 2:**
```
Input: s = "a"
Output: 1
Explanation: The longest palindrome that can be built is "a", whose length is 1.
```

**Constraints:**
```
1 <= s.length <= 2000
s consists of lowercase and/or uppercase English letters only.
```

 ### Solution 1

```Python
from collections import Counter
class Solution:
    """
    @param s: a string which consists of lowercase or uppercase letters
    @return: the length of the longest palindromes that can be built
    """
    def longest_palindrome(self, s: str) -> int:
        dic = {}
        for item in s:
            dic[item] = dic.get(item, 0) + 1
        
        length, flag = 0, 0
        for key in dic:
            if dic[key] % 2 == 1:
                flag = 1
            length += (dic[key] // 2) * 2
        
        return length + flag

Time complexity: O(N)
```
