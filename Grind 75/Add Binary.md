We can practice this problem by clicking on this link.
>（https://www.lintcode.com/problem/408/ or https://leetcode.com/problems/add-binary/ ）
# Description:
 <p> Given two binary strings a and b, return their sum as a binary string. </p> 

**example 1:**
```
Input: a = "11", b = "1"
Output: "100"
```

**example 2:**
```
Input: a = "1010", b = "1011"
Output: "10101"
```

**Constraints:**
```
1 <= a.length, b.length <= 104
a and b consist only of '0' or '1' characters.
Each string does not contain leading zeros except for the zero itself.
```

 ### Solution 1

```Python
class Solution:
    """
    @param a: a number
    @param b: a number
    @return: the result
    """
    def add_binary(self, a: str, b: str) -> str:
        decimal_a = self.bin_to_decimal(a)
        decimal_b = self.bin_to_decimal(b)
        decimal_results = decimal_a + decimal_b
        bin_results = bin(decimal_results)[2:]
        return bin_results
    
    def bin_to_decimal(self, x):
        x = x[::-1]
        results = 0
        for i in range(len(x)):
            results += int(x[i]) * pow(2, int(i))
        
        return results
    
Time complexity: O(N) N = max(len(a), len(b))
```
### Solution 2

```Python
class Solution:
    """
    @param a: a number
    @param b: a number
    @return: the result
    """
    def add_binary(self, a: str, b: str) -> str:
        return str(bin(int(a, 2) + int(b, 2))[2:])
```

#### Python int() Function Syntax :
```
Syntax: int(x, base)

x [optional]: string representation of integer value, defaults to 0, if no value provided.
base [optional]: (integer value) base of the number.
Returns: Return decimal (base-10) representation of x
```
