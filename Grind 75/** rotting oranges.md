We can practice this problem by clicking on this link.
>（  [https://leetcode.com/problems/number-of-islands/](https://leetcode.com/problems/rotting-oranges/) ）
>
# Description:
 <p>  You are given an m x n grid where each cell can have one of three values:

0 representing an empty cell,
1 representing a fresh orange, or
2 representing a rotten orange.
Every minute, any fresh orange that is 4-directionally adjacent to a rotten orange becomes rotten.

Return the minimum number of minutes that must elapse until no cell has a fresh orange. If this is impossible, return -1.
  </p> 
  
**example 1:**
```
Input: grid = [[2,1,1],[1,1,0],[0,1,1]]
Output: 4
```

**example 2:**
```
Input: grid = [[2,1,1],[0,1,1],[1,0,1]]
Output: -1
Explanation: The orange in the bottom left corner (row 2, column 0) is never rotten, because rotting only happens 4-directionally.
```


**Constraints:**
```
m == grid.length
n == grid[i].length
1 <= m, n <= 10
grid[i][j] is 0, 1, or 2.
```

 ### Solution 1

```Python
from collections import deque
class Solution:
    def orangesRotting(self, grid: List[List[int]]) -> int:
        if not grid:
            return 0

        queue = deque([])
        time, min_time = 0, 0
        have_good, have_rotten = 0, 0

        for i in range(len(grid)):
            for j in range(len(grid[0])):
                if grid[i][j] == 1:
                    have_good += 1
                if grid[i][j] == 2:
                    queue.append((time, i, j))
                    have_rotten = 1

        last_time = 0
        while queue:
            time, x, y = queue.popleft()
            min_time = max(min_time, time)
            adj_list = [(x-1, y), (x+1, y), (x, y+1), (x, y-1)]
            for x_, y_ in adj_list:
                if 0 <= x_ < len(grid) and 0 <= y_ < len(grid[0]) and grid[x_][y_] == 1:
                    grid[x_][y_] = 2
                    have_good -= 1
                    queue.append((time + 1, x_, y_))

        return time if not have_good else -1

    
               
Time complexity:  O(N^M) Space complexity: O(N*M)
```
