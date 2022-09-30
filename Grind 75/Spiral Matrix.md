We can practice this problem by clicking on this link.
>（  https://leetcode.com/problems/spiral-matrix/ ）
# Description:
 <p> Given an m x n matrix, return all elements of the matrix in spiral order.</p> 

**example 1:**
```
Input: head = [3,2,0,-4], pos = 1
Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
Output: [1,2,3,6,9,8,7,4,5]
```

**example 2:**
```
Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
Output: [1,2,3,4,8,12,11,10,9,5,6,7]
```

**Constraints:**
```
m == matrix.length
n == matrix[i].length
1 <= m, n <= 10
-100 <= matrix[i][j] <= 100
```

 ### Solution 1

```Python
from collections import deque
class Solution:
    def spiralOrder(self, matrix: List[List[int]]) -> List[int]:
        x, y = 0, 0
        visited = []
        res = [matrix[0][0]]
        visited.append((0, 0))
        self.go_right(x, y + 1, visited, matrix, res)
        return res

    def go_right(self, x, y, visited, matrix, res):
        if 0 <= x < len(matrix) and 0 <= y < len(matrix[0]) and (x, y) not in visited:
            visited.append((x, y))
            res.append(matrix[x][y])
            self.go_right(x, y + 1, visited, matrix, res)
        elif len(visited) != len(matrix)*len(matrix[0]):
            self.go_down(visited[-1][0] + 1, visited[-1][1], visited, matrix, res)
        else:
            return

    def go_down(self, x, y, visited, matrix, res):
        if 0 <= x < len(matrix) and 0 <= y < len(matrix[0]) and (x, y) not in visited:
            visited.append((x, y))
            res.append(matrix[x][y])
            self.go_down(x + 1, y, visited, matrix, res)
        elif len(visited) != len(matrix)*len(matrix[0]):
            self.go_left(visited[-1][0], visited[-1][1] - 1, visited, matrix, res)
        else:
            return

    def go_left(self, x, y, visited, matrix, res):
        if 0 <= x < len(matrix) and 0 <= y < len(matrix[0]) and (x, y) not in visited:
            visited.append((x, y))
            res.append(matrix[x][y])
            self.go_left(x, y - 1, visited, matrix, res)
        elif len(visited) != len(matrix)*len(matrix[0]):
            self.go_up(visited[-1][0] - 1, visited[-1][1], visited, matrix, res)
        else:
            return

    def go_up(self, x, y, visited, matrix, res):
        if 0 <= x < len(matrix) and 0 <= y < len(matrix[0]) and (x, y) not in visited:
            visited.append((x, y))
            res.append(matrix[x][y])
            self.go_up(x - 1, y, visited, matrix, res)
        elif len(visited) != len(matrix)*len(matrix[0]):
            self.go_right(visited[-1][0], visited[-1][1] + 1, visited, matrix, res)
        else:
            return

Time complexity: O(M*N)  Space complexity: O(M*N)
```

### Solution 2
```
def spiralOrder(self, matrix):
    return matrix and [*matrix.pop(0)] + self.spiralOrder([*zip(*matrix)][::-1])

```
