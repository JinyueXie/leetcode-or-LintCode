We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/850/ ）
# Description:
 <p> We are given a list schedule of employees, which represents the working time for each employee.  

Each employee has a list of non-overlapping Intervals, and these intervals are in sorted order.  

Return the list of finite intervals representing common, positive-length free time for all employees, also in sorted order.  

The Intervals is an 1d-array. Each two numbers shows an interval. For example, [1,2,8,10] represents that the employee works in [1,2] and [8,10].  

Also, we wouldn't include intervals like [5, 5] in our answer, as they have zero length.</p> 

**example 1:**
```
Input：schedule = [[1,2,5,6],[1,3],[4,10]]
Output：[(3,4)]
Explanation:
There are a total of three employees, and all common
free time intervals would be [-inf, 1], [3, 4], [10, inf].
We discard any intervals that contain inf as they aren't finite.
```

**example 2:**
```
Input：schedule = [[1,3,6,7],[2,4],[2,5,9,12]]
Output：[(5,6),(7,9)]
Explanation：
There are a total of three employees, and all common
free time intervals would be [-inf, 1], [5, 6], [7, 9],[12,inf].
We discard any intervals that contain inf as they aren't finite.
```

 ### Solution

```Python
from typing import (
    List,
)
from lintcode import (
    Interval,
)

"""
Definition of Interval:
class Interval(object):
    def __init__(self, start, end):
        self.start = start
        self.end = end
"""

class Solution:
    """
    @param schedule: a list schedule of employees
    @return: Return a list of finite intervals 
    """
    def employee_free_time(self, schedule: List[List[int]]) -> List[Interval]:
        if not schedule:
            return []
        
        intervals = []
        for i in range(len(schedule)):
            for j in range(len(schedule[i])):
                if j % 2 == 0:
                    intervals.append((schedule[i][j], schedule[i][j + 1]))
        
        intervals.sort(key = lambda x: x[0])
        
        results = []
        last = intervals[0][1]

        for i in range(1, len(intervals)):
            start = intervals[i][0]
            end = intervals[i][1]
            if last < start:
                results.append(Interval(last, start))
            
            last = max(last, end)
        
        return results
```

Time complexity: O(N）， Space complexity: O(N)
