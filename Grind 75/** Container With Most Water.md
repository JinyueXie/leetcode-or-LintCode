We can practice this problem by clicking on this link.
>（   https://leetcode.com/problems/container-with-most-water/  ）
# Description:
 <p>  You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return the maximum amount of water a container can store.

Notice that you may not slant the container.
  </p> 
  
**example 1:**
```
Input: height = [1,8,6,2,5,4,8,3,7]
Output: 49
Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
```

**example 2:**
```
Input: height = [1,1]
Output: 1
```


**Constraints:**
```
n == height.length
2 <= n <= 105
0 <= height[i] <= 104
```

 ### Solution 1

```Python
class Solution:
    def maxArea(self, height: List[int]) -> int:
        output = 0
        start = 0
        end = len(height) - 1

        while start < end:
            h = min(height[start], height[end])
            l = end - start
            output = max(output, h * l)

            if height[start] > height[end]:
                end -= 1
            else:
                start += 1

        return output
    
               
Time complexity:  O(N) Space complexity: O(1)
```
