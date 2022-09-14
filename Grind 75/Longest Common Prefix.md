We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/longest-common-prefix/submissions/ ）
# Description:
 <p> Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "". </p> 
**example 1:**
```
Input: strs = ["flower","flow","flight"]
Output: "fl"
```

**example 2:**
```
Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
```


**Constraints:**
```
1 <= strs.length <= 200
0 <= strs[i].length <= 200
strs[i] consists of only lowercase English letters.
```

 ### Solution 1

```Python
class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if not strs:
            return ""
        n = len(strs[0])
        example = strs[0]
        for i in range(n, 0, -1):
            common = strs[0][:i]
            if self.commonPrefix(common, strs):
                return common
        
        return ""
    
    def commonPrefix(self, common, strs):
        n = len(common)
        for string in strs:
            if string[:n] != common:
                return False
        
        return True
    
           
Time complexity: O(N^2)
```

 ### Solution 2

```Python
class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        strs.sort()
        res = ""
        for i in range(len(strs[0])):
            if(strs[0][i]==strs[len(strs)-1][i]):
                res+=strs[0][i]
            else:
                return res
        return res
           
Time complexity: O(NlogN)
```
