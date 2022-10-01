We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/word-search/ ）
# Description:
 <p> Given an m x n grid of characters board and a string word, return true if word exists in the grid.

The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.
  </p>    
  
**example 1:**
```
Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
Output: true
```
  
**example 2:**
```
Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
Output: true
```
**Constraints:**
```
m == board.length
n = board[i].length
1 <= m, n <= 6
1 <= word.length <= 15
board and word consists of only lowercase and uppercase English letters
```

 ### Solution

```Python
class Solution:
    def exist(self, board: List[List[str]], word: str) -> bool:
        visited = set()
        def recursion(i, j, index):
            if index == len(word):
                return True

            if not (0 <= i < len(board) and 0 <= j < len(board[0])):
                return False

            if (i, j) in visited or board[i][j] != word[index]:
                return False

            visited.add((i, j))
            results = (recursion(i + 1, j, index + 1) or recursion(i - 1, j, index + 1) or recursion(i, j - 1, index + 1) or recursion(i, j + 1,
                                                                                                              index + 1))
            visited.pop()

            return results

        for i in range(len(board)):
            for j in range(len(board[0])):
                if board[i][j] == word[0]:
                    if recursion(i, j, 0):
                        return True

        return False
           
Time complexity:  O(MN^(K) K = len(word) space complexity: O(NM)
```
