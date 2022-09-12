We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/415/ or https://leetcode.com/problems/valid-palindrome/ ）
# Description:
 <p> A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.</p> 

**example 1:**
```
Input: "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama"
```

**example 2:**
```
Input: "race a car"
Output: false
Explanation: "raceacar"
```

**example 3:**
```
Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
```

 ### Solution 1

```Python
class Solution:
    """
    @param s: A string
    @return: Whether the string is a valid palindrome
    """
    def is_palindrome(self, s: str) -> bool:
        current = []
        for item in s:
            if item.isalnum():
                if ord(item) > 96:
                    item = chr(ord(item) - 32)
                current.append(item)
        
        left, right = 0, len(current) - 1
        while left < right:
            if current[left] != current[right]:
                return False
            left += 1
            right -= 1

        return True
        
Time complexity: O(N)
```
 ### Solution 2

```Python

def isPalindrome(self, s):
    l, r = 0, len(s)-1
    while l < r:
        while l < r and not s[l].isalnum():
            l += 1
        while l <r and not s[r].isalnum():
            r -= 1
        if s[l].lower() != s[r].lower():
            return False
        l +=1; r -= 1
    return True
        
Time complexity: O(N) Space complexity: O(1)
```
 ### Knowledge
```
 The isalpha() method returns True if all the characters are alphabet letters (a-z).  
 The isalnum() method returns True if all the characters are alphanumeric, meaning alphabet letter (a-z) and numbers (0-9).  
 The lower() method returns a string where all characters are lower case.

 ```
 
