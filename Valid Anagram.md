We can practice this problem by clicking on this link.
>（https://www.lintcode.com/problem/158/ or https://leetcode.com/problems/valid-anagram/ ）
# Description:
 <p> Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.</p> 

**example 1:**
```
Input: s = "anagram", t = "nagaram"
Output: true
```

**example 2:**
```
Input: s = "rat", t = "car"
Output: false
```

**Constraints:**
```
1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.
```

 ### Solution 1

```Python
class Solution:
    """
    @param s: The first string
    @param t: The second string
    @return: true or false
    """
    def anagram(self, s: str, t: str) -> bool:
        list_s = list(s)
        list_t = list(t)
        list_s.sort(key = lambda x : x)
        list_t.sort(key = lambda x : x)
        return list_s == list_t

Time complexity: O(NlogN)
```

 ### Solution 2

```Python
class Solution:
    """
    @param s: The first string
    @param t: The second string
    @return: true or false
    """
    def anagram(self, s: str, t: str) -> bool:
        dic1, dic2 = {}, {}
        for item in s:
            dic1[item] = dic1.get(item, 0) + 1
        for item in t:
            dic2[item] = dic2.get(item, 0) + 1
        return dic1 == dic2

Time complexity: O(N)
```
### Solution 3

```Python
for x in 'abcdefghijklmnopqrstuvwxzy':
    if s.count(x) != t.count(x):
    return False
return True

Time complexity: O(N)
```
