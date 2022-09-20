We can practice this problem by clicking on this link.
>（  https://leetcode.com/problems/number-of-islands/）
# Description:
 <p>  Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.

An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.
  </p> 
  
**example 1:**
```
Input: grid = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]
Output: 1
```

**example 2:**
```
Input: grid = [
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
]
Output: 3
```


**Constraints:**
```
m == grid.length
n == grid[i].length
1 <= m, n <= 300
grid[i][j] is '0' or '1'.
```

 ### Solution 1

```Python
class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        number_of_islands = 0
        for i in range(len(grid)):
            for j in range(len(grid[0])):
                if grid[i][j] == '1':
                    self.dfs(i, j, grid)
                    number_of_islands += 1

        return number_of_islands

    def dfs(self, i, j, grid):
        grid[i][j] = '0'
        directions_list = [(i-1, j), (i+1, j), (i, j+1), (i, j-1)]
        for x, y in directions_list:
            if 0 <= x < len(grid) and 0 <= y < len(grid[0]) and grid[x][y] == '1':
                self.dfs(x, y, grid)
    
               
Time complexity:  O(N^M) Space complexity: O(N*M)
```
