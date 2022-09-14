We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/1425/ or https://leetcode.com/problems/backspace-string-compare/ ）
# Description:
 <p> Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character.

Note that after backspacing an empty text, the text will continue empty.</p> 

**example 1:**
```
Input: s = "ab#c", t = "ad#c"
Output: true
Explanation: Both s and t become "ac".
```

**example 2:**
```
Input: s = "ab##", t = "c#d#"
Output: true
Explanation: Both s and t become "".
```
**example 3:**
```
Input: s = "a#c", t = "b"
Output: false
Explanation: s becomes "c" while t becomes "b".
```

**Constraints:**
```
1 <= s.length, t.length <= 200
s and t only contain lowercase letters and '#' characters.
```
 
 ### Solution 1

```Python
class Solution:
    """
    @param s: string S
    @param t: string T
    @return: Backspace String Compare
    """
    def backspace_compare(self, s: str, t: str) -> bool:
        list_s, list_t = [], []
        for i in s:
            if i != '#':
                list_s.append(i)
            elif list_s:
                list_s.pop()
        
        for j in t:
            if j != '#':
                list_t.append(j)
            elif list_t:
                list_t.pop()
        
        return list_t == list_s

Time complexity: O(N) Space complexity: O(N)
```
 
 ### Solution 2

```Python
class Solution:
    """
    @param s: string S
    @param t: string T
    @return: Backspace String Compare
    """
    def backspace_compare(self, s: str, t: str) -> bool:
        def stacks(string, stack):
            for i in string:
                if i == '#' and len(stack) == 0: pass
                elif i != "#": stack.append(i)
                else: stack.pop()
            return stack
        return stacks(s, []) == stacks(t, [])
        
Time complexity: O(N) Space complexity: O(1)
```


#### Python program to demonstrate difference between pass and continue statements
```
s = "geeks"
 
# Pass statement
for i in s:
    if i == 'k':
        print('Pass executed')
        pass
    print(i)
 
print()

output:
g
e
e
Pass executed
k
s
```
```
# Continue statement
for i in s:
    if i == 'k':
        print('Continue executed')
        continue
    print(i)
    

output:
g
e
e
Continue executed
s
```
