We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/920/ ）
# Description:
 <p> Given an array of meeting time intervals consisting of start and end times [[s1,e1],[s2,e2],...] (si < ei), determine if a person could attend all meetings.</p> 

**example 1:**
```
Input: intervals = [(0,30),(5,10),(15,20)]
Output: false
Explanation: 
(0,30), (5,10) and (0,30),(15,20) will conflict
```

**example 2:**
```
Input: intervals = [(5,8),(9,15)]
Output: true
Explanation: 
Two times will not conflict 
```

**Constraints:**
```
(0,8),(8,10) is not conflict at 8
```

 ### Solution 1

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
from collections import Counter
class Solution:
    """
    @param intervals: an array of meeting time intervals
    @return: if a person could attend all meetings
    """
    def can_attend_meetings(self, intervals: List[Interval]) -> bool:
        for i in range(1, len(intervals)):
            if intervals[i].start > intervals[i - 1].start:
                if intervals[i].start < intervals[i - 1].end:
                    return False
            else:
                if intervals[i].start > intervals[i - 1].end:
                    return False
        
        return True
  
Time complexity: O(N^2)
```
### Solution 2

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
from collections import Counter
class Solution:
    """
    @param intervals: an array of meeting time intervals
    @return: if a person could attend all meetings
    """
    def can_attend_meetings(self, intervals: List[Interval]) -> bool:
        end_time = -1
        for interval in sorted(intervals, key = lambda interval: interval.start):
            if interval.start < end_time:
                return False
            end_time = interval.end 
        return True
                                         
Time complexity: O(NlogN) Space complexity: O(1)
```
