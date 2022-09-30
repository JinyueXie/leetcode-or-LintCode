We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/string-to-integer-atoi/  ）
# Description:
 <p> Implement the myAtoi(string s) function, which converts a string to a 32-bit signed integer (similar to C/C++'s atoi function).

The algorithm for myAtoi(string s) is as follows:

Read in and ignore any leading whitespace.
Check if the next character (if not already at the end of the string) is '-' or '+'. Read this character in if it is either. This determines if the final result is negative or positive respectively. Assume the result is positive if neither is present.
Read in next the characters until the next non-digit character or the end of the input is reached. The rest of the string is ignored.
Convert these digits into an integer (i.e. "123" -> 123, "0032" -> 32). If no digits were read, then the integer is 0. Change the sign as necessary (from step 2).
If the integer is out of the 32-bit signed integer range [-231, 231 - 1], then clamp the integer so that it remains in the range. Specifically, integers less than -231 should be clamped to -231, and integers greater than 231 - 1 should be clamped to 231 - 1.
Return the integer as the final result. Only the space character ' ' is considered a whitespace character.
Do not ignore any characters other than the leading whitespace or the rest of the string after the digits.</p> 

**example 1:**
```
Input: s = "42"
Output: 42
Explanation: The underlined characters are what is read in, the caret is the current reader position.
Step 1: "42" (no characters read because there is no leading whitespace)
         ^
Step 2: "42" (no characters read because there is neither a '-' nor '+')
         ^
Step 3: "42" ("42" is read in)
           ^
The parsed integer is 42.
Since 42 is in the range [-231, 231 - 1], the final result is 42.
```

**example 2:**
```
Input: s = "   -42"
Output: -42
Explanation:
Step 1: "   -42" (leading whitespace is read and ignored)
            ^
Step 2: "   -42" ('-' is read, so the result should be negative)
             ^
Step 3: "   -42" ("42" is read in)
               ^
The parsed integer is -42.
Since -42 is in the range [-231, 231 - 1], the final result is -42.
```

**Constraints:**
```0 <= s.length <= 200
s consists of English letters (lower-case and upper-case), digits (0-9), ' ', '+', '-', and '.'.
```

 ### Solution 1

```Python
def myAtoi(self, s: str) -> int:
        length, i, sign, res = len(s), 0, +1, ''
        
        while i < length and s[i] == ' ': i = i + 1
            
        if i < length and s[i] in ('-', '+'): 
			sign, i = -1 if s[i] == '-' else +1, i + 1
            
        while i < length and s[i].isdigit(): 
			res, i = res + s[i], i + 1
        
        return max( -2**31, min( sign * int(res or 0), 2**31 - 1 ) )
Time complexity: O(N) Space complexity:O(1)
```

### Solution 2
```
def myAtoi(self, s: str) -> int:
    # ^ matches beginging of string 
    # \s* any nunber of whitspaces (zero or more)
    # [+-] either a + or -
    # [+-]? zero or one of either +/-
    # \d a digit 
    # \d + one or more digit
    # the the pattern inside () is a group where you can access 

    REGEX = r'^\s*([-+]?\d+)'
    MAX = 2147483647
    MIN = -2147483648

    if not re.search(REGEX, s):
        return 0
    num = int(re.findall(REGEX, s)[0]) # first_match
    return min(MAX, max(num, MIN))
   Time complexity: O(n)
   ```
