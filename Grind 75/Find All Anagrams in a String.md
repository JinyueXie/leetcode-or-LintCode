We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/find-all-anagrams-in-a-string/ ）
# Description:
 <p>Given two strings s and p, return an array of all the start indices of p's anagrams in s. You may return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once. </p> 

**example 1:**
```
Input: s = "cbaebabacd", p = "abc"
Output: [0,6]
Explanation:
The substring with start index = 0 is "cba", which is an anagram of "abc".
The substring with start index = 6 is "bac", which is an anagram of "abc".

```

**example 2:**
```
Input: s = "abab", p = "ab"
Output: [0,1,2]
Explanation:
The substring with start index = 0 is "ab", which is an anagram of "ab".
The substring with start index = 1 is "ba", which is an anagram of "ab".
The substring with start index = 2 is "ab", which is an anagram of "ab".
```

**Constraints:**
```
1 <= s.length, p.length <= 3 * 104
s and p consist of lowercase English letters.
```

 ### Solution 1

```Python
class Solution:
    def findAnagrams(self, s: str, p: str) -> List[int]:
        if len(p) > len(s):
            return []

        hash1, hash2 = {}, {}
        for item in p:
            hash2[item] = hash2.get(item, 0) + 1

        for i in range(len(p)):
            hash1[s[i]] = hash1.get(s[i], 0) + 1

        res = []
        left, right = 0, len(p) - 1
        while right < len(s):
            if sum(({k:hash1[k] for k in hash1 if k in hash2 and hash1[k] == hash2[k]}).values()) == len(p):
                res.append(left)
            if right + 1 < len(s) and s[right + 1] in hash1:
                hash1[s[right + 1]] += 1
            elif right + 1 < len(s) and s[right + 1] not in hash1:
                hash1[s[right + 1]] = hash1.get(s[right + 1], 0) + 1
            hash1[s[left]] -= 1
            left += 1
            right += 1

        return res
Time complexity: O(N) Space complexity:O(N)
```
or 
```
from collections import Counter
class Solution:
    def findAnagrams(self, s: str, p: str) -> List[int]:
        if len(p) > len(s):
            return []

        hash1, hash2 = {}, {}
        hash2 = Counter(p)

        for i in range(len(p)):
            hash1[s[i]] = hash1.get(s[i], 0) + 1

        res = []
        left, right = 0, len(p) - 1
        while right < len(s):
            if hash1 == hash2:
                res.append(left)
            if right + 1 < len(s) and s[right + 1] in hash1:
                hash1[s[right + 1]] += 1
            elif right + 1 < len(s) and s[right + 1] not in hash1:
                hash1[s[right + 1]] = hash1.get(s[right + 1], 0) + 1
            hash1[s[left]] -= 1
            if hash1[s[left]] == 0:
                hash1.pop(s[left])
            left += 1
            right += 1

        return res
```
