We can practice this problem by clicking on this link.
>（  https://leetcode.com/problems/letter-combinations-of-a-phone-number/ ）
# Description:
 <p> Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.  </p> 

**example 1:**
```
Input: digits = "23"
Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
```
**example 2:**
```
Input: digits = ""
Output: []
```

**example 3:**
```
Input: digits = "2"
Output: ["a","b","c"]
```

**Constraints:**
```
0 <= digits.length <= 4
digits[i] is a digit in the range ['2', '9'].
```

 ### Solution 1

```Python
class Solution:
    def letterCombinations(self, digits: str) -> List[str]:
        d_map = {"2": ["a", "b", "c"], "3": ["d", "e", "f"],
                 "4": ["g", "h", "i"], "5": ["j", "k", "l"], "6": ["m", "n", "o"],
                 "7": ["p", "q", "r", "s"], "8": ["t", "u", "v"], "9": ["w", "x", "y", "z"]}
        c = [d_map[i] for i in digits]
        return [''.join(i) for i in product(*c)] if c else []

``` 

 ### Solution  2

```Python
class Solution:
    def letterCombinations(self, digits: str) -> List[str]:
        mapper = {'2':'abc',
                  '3':'def',
                  '4':'ghi',
                  '5':'jkl',
                  '6':'mno',
                  '7':'pqrs',
                  '8':'tuv',
                  '9':'wxyz'}

        cur = []
        if not digits:
            return []

        def dfs(i, path):
            if len(digits) == len(path):
                cur.append(path)
                return
            for string in mapper[digits[i]]:
                dfs(i + 1, path + string)

        dfs(0, '')
        return cur
Time complexity: O(4^n), where n is the length of the input string.
``` 
