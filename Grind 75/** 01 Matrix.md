We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/01-matrix/ ）
# Description:
 <p> Given an m x n binary matrix mat, return the distance of the nearest 0 for each cell.

The distance between two adjacent cells is 1. </p> 

**example 1:**
```
Input: mat = [[0,0,0],[0,1,0],[0,0,0]]
Output: [[0,0,0],[0,1,0],[0,0,0]]
```

**example 2:**
```
Input: mat = [[0,0,0],[0,1,0],[1,1,1]]
Output: [[0,0,0],[0,1,0],[1,2,1]]
```

**Constraints:**
```
m == mat.length
n == mat[i].length
1 <= m, n <= 104
1 <= m * n <= 104
mat[i][j] is either 0 or 1.
There is at least one 0 in mat.
```

 ### Solution 1 Using BFS

```Python

from collections import deque

Directions = [(-1, 0), (1, 0), (0, 1), (0, -1)]


class Solution:
    def updateMatrix(self, mat: List[List[int]]) -> List[List[int]]:
        rows, cols = len(mat), len(mat[0])
        queue = deque()
        for row in range(rows):
            for col in range(cols):
                if mat[row][col] == 0:
                    queue.append((row, col))
                else:
                    mat[row][col] = '#'

        while queue:
            x, y = queue.popleft()
            for dx, dy in Directions:
                x_ = x + dx
                y_ = y + dy

                if (0 <= x_ < rows) and (0 <= y_ < cols) and mat[x_][y_] == '#':
                    mat[x_][y_] = mat[x][y] + 1
                    queue.append((x_, y_))

        return mat
```
#### Complexity Analysis
```

Time complexity: O(r⋅c)

Since, the new cells are added to the queue only if their current distance is greater than the calculated distance, cells are not likely to be added multiple times.

Space complexity: O(r⋅c)

An additional O(r⋅c) space is required to maintain the queue.
```
