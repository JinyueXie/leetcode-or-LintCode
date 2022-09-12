We can practice this problem by clicking on this link.
>（https://www.lintcode.com/problem/423/ or https://leetcode.com/problems/valid-parentheses/ ）
# Description:
 <p> Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.</p> 

**example 1:**
```
Input: s = "()"
Output: true
```

**example 2:**
```
Input: s = "()[]{}"
Output: true
```


**example 3:**
```
Input: s = "(]"
Output: false
```

 ### Solution

```Python
class Solution:
    """
    @param s: A string
    @return: whether the string is a valid parentheses
    """
    def is_valid_parentheses(self, s: str) -> bool:
        if not s or len(s) % 2 == 1:
            return False
        
        stack = []
        stack.append(s[0])
        for i in range(1, len(s)):
            if stack and stack[-1] == '(' and s[i] == ')':
                stack.pop()
            elif stack and stack[-1] == '[' and s[i] == ']':
                stack.pop()
            elif stack and stack[-1] == '{' and s[i] == '}':
                stack.pop()
            else:
                stack.append(s[i])
        
        if stack:
            return False
        else:
            return True
 
Time complexity: O(N)
```

### Or
```Python
stack = []
        brackets = {
            ')': '(',
            '}': '{',
            ']': '['
        }
        
        for l in s:
            if l not in brackets:
                stack.append(l)
            elif not stack or brackets[l] != stack.pop():
                return False
                
        return stack == []
 
Time complexity: O(N)
```
