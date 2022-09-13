We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/1062/ ）
# Description:
 <p> An image is represented by a 2-D array of integers, each integer representing the pixel value of the image (from 0 to 65535).

Given a coordinate (sr, sc) representing the starting pixel (row and column) of the flood fill, and a pixel value newColor, "flood fill" the image.

To perform a "flood fill", consider the starting pixel, plus any pixels connected 4-directionally to the starting pixel of the same color as the starting pixel, plus any pixels connected 4-directionally to those pixels (also with the same color as the starting pixel), and so on. Replace the color of all of the aforementioned pixels with the newColor.

At the end, return the modified image.</p> 

**example 1:**
```
Input: 
image = [[1,1],[0,0]]
sr = 0, sc = 0, newColor = 2
Output: [[2,2],[0,0]]
```

**example 2:**
```
Input: 
image = [[1,1,1],[1,1,0],[1,0,1]]
sr = 1, sc = 1, newColor = 2
Output: [[2,2,2],[2,2,0],[2,0,1]]
Explanation: 
From the center of the image (with position (sr, sc) = (1, 1)), all pixels connected 
by a path of the same color as the starting pixel are colored with the new color.
Note the bottom corner is not colored 2, because it is not 4-directionally connected
to the starting pixel.
```

**Constraints:**
```
The length of image and image[0] will be in the range [1, 50].
The given starting pixel will satisfy 0 <= sr < image.length and 0 <= sc < image[0].length.
The value of each color in image[i][j] and newColor will be an integer in [0, 65535].
```

 ### Solution

```Python
from typing import (
    List,
)
Directions = [(-1, 0), (1, 0), (0, 1), (0, -1)]
from collections import deque
class Solution:
    """
    @param image: a 2-D array
    @param sr: an integer
    @param sc: an integer
    @param new_color: an integer
    @return: the modified image
    """
    def flood_fill(self, image: List[List[int]], sr: int, sc: int, new_color: int) -> List[List[int]]:
        if not image:
            return 0
        
        queue = deque([(sr, sc)])
        visited = set()
        n, m = len(image), len(image[0])
        visited.add((sr, sc))

        while queue:
            x, y = queue.popleft()
            for dx, dy in Directions:
                x_, y_ = dx + x, dy + y
                if not self.is_valid(x_, y_, image[sr][sc], image):
                    continue
                if (x_, y_) in visited:
                    continue
                image[x_][y_] = new_color

                queue.append((x_, y_))
                visited.add((x_, y_))
                
        image[sr][sc] = new_color

        return image
    
    def is_valid(self, x, y, old_color, image):
        if not(0 <= x < len(image) and 0 <= y < len(image[0])):
            return False
        
        if image[x][y] != old_color:
            return False
        
        return True
        
Time complexity: O(N*M) Space complexity: O(N*M)
```
