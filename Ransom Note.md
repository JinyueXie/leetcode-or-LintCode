We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/1270/ or https://leetcode.com/problems/ransom-note/ ）
# Description:
 <p> Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

Each letter in magazine can only be used once in ransomNote. </p> 
**example 1:**
```
Input: ransomNote = "a", magazine = "b"
Output: false
```

**example 2:**
```
Input: ransomNote = "aa", magazine = "ab"
Output: false
```

**example 3:**
```
Input: ransomNote = "aa", magazine = "aab"
Output: true
```

**Constraints:**
```
1 <= ransomNote.length, magazine.length <= 105
ransomNote and magazine consist of lowercase English letters.
```

 ### Solution 1

```Python
class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        dic_note = {}
        dic_mag = {}
        for note in ransomNote:
            dic_note[note] = dic_note.get(note, 0) + 1
        
        for mag in magazine:
            dic_mag[mag] = dic_mag.get(mag, 0) + 1
        
        for key in dic_note:
            if key not in dic_mag or dic_mag[key] < dic_note[key]:
                return False
        
        return True
           
Time complexity: O(M + N)
```
 ### Solution 2

```Python
def canConstruct(self, ransomNote, magazine):
    return not collections.Counter(ransomNote) - collections.Counter(magazine)
           
Time complexity: O(M + N)
```

