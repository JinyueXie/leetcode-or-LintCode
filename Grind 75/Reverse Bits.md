We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/1333/ or https://leetcode.com/problems/reverse-bits/ ）
# Description:
 <p> Reverse bits of a given 32 bits unsigned integer.   
Note that in some languages, such as Java, there is no unsigned integer type. In this case, both input and output will be given as a signed integer type. They should not affect your implementation, as the integer's internal binary representation is the same, whether it is signed or unsigned.
In Java, the compiler represents the signed integers using 2's complement notation. Therefore, in Example 2 above, the input represents the signed integer -3 and the output represents the signed integer -1073741825. </p> 
**example 1:**
```
Input: n = 00000010100101000001111010011100
Output:    964176192 (00111001011110000010100101000000)
Explanation: The input binary string 00000010100101000001111010011100 represents the unsigned integer 43261596, so return 964176192 which its binary representation is 00111001011110000010100101000000.
```

**example 2:**
```
Input: n = 11111111111111111111111111111101
Output:   3221225471 (10111111111111111111111111111111)
Explanation: The input binary string 11111111111111111111111111111101 represents the unsigned integer 4294967293, so return 3221225471 which its binary representation is 10111111111111111111111111111111.
```

**Constraints:**
```
The input must be a binary string of length 32
```

 ### Solution 1 

```Python
class Solution:
    def reverseBits(self, n: int) -> int:
        bin_n = bin(n)[2:]
        int_n = ((32 - len(bin_n))*['0'] + list(str(bin_n)))[::-1]
        bin_int_n = ''.join(i for i in int_n)
        return int(bin_int_n, 2)
        
        
Time complexity: O(N)
```
 ### Solution 2

```Python
class Solution:
    """
    @param n: an integer
    @return: return an integer
    """
    def reverse_bits(self, n: int) -> int:
        b = "{:032b}".format(n)
        b = b[::-1]
        return int(b, 2)
        
        
Time complexity: O(N)
```
