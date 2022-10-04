We can practice this problem by clicking on this link.
>（  https://leetcode.com/problems/daily-temperatures/ ）
# Description:
 <p> Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead. </p> 
**example 1:**
```
Input: temperatures = [73,74,75,71,69,72,76,73]
Output: [1,1,4,2,1,1,0,0]
```

**example 2:**
```
Input: temperatures = [30,40,50,60]
Output: [1,1,1,0]
```
**example 3:**
```
Input: temperatures = [30,60,90]
Output: [1,1,0]
```

**Constraints:**
```
1 <= temperatures.length <= 105
30 <= temperatures[i] <= 100
```

 ### Solution

```Python
class Solution:
    def dailyTemperatures(self, temperatures: List[int]) -> List[int]:
        if len(temperatures) == 1:
            return [0]
        stack, res = [], [0]*len(temperatures)
        for index, item in enumerate(temperatures):
            while stack and item > temperatures[stack[-1]]:
                cur_index = stack.pop()
                res[cur_index] = index - cur_index
            stack.append(index)

        return res

           
Time complexity: O(N) Space complexity: O(N)
```
