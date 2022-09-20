We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/course-schedule/ ）
# Description:
 <p> There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course bi first if you want to take course ai.

For example, the pair [0, 1], indicates that to take course 0 you have to first take course 1.
Return true if you can finish all courses. Otherwise, return false. </p>  
**example 1:**
```
Input: numCourses = 2, prerequisites = [[1,0]]
Output: true
Explanation: There are a total of 2 courses to take. 
To take course 1 you should have finished course 0. So it is possible.
```

**example 2:**
```
Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
Output: false
Explanation: There are a total of 2 courses to take. 
To take course 1 you should have finished course 0, and to take course 0 you should also have finished course 1. So it is impossible.
```

**Constraints:**
```
1 <= numCourses <= 2000
0 <= prerequisites.length <= 5000
prerequisites[i].length == 2
0 <= ai, bi < numCourses
All the pairs prerequisites[i] are unique.
```

 ### Solution

```Python
"""
from collections import deque
class Solution:
    def canFinish(self, numCourses: int, prerequisites: List[List[int]]) -> bool:
        graph = [[] for _ in range(numCourses)]
        in_degree = [0]*numCourses

        for course, pre_course in prerequisites:
            graph[pre_course].append(course)
            in_degree[course] += 1

        queue = deque()
        num_of_courses = 0
        for i in range(numCourses):
            if in_degree[i] == 0:
                queue.append(i)

        while queue:
            current_course = queue.popleft()
            num_of_courses += 1
            for next_course in graph[current_course]:
                in_degree[next_course] -= 1
                if in_degree[next_course] == 0:
                    queue.append(next_course)

        return num_of_courses == numCourses

           
Time complexity: O(V + E) Space complexity: O(V + E)
```
