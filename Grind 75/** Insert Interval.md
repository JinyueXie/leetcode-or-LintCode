We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/insert-interval/ ）
# Description:
 <p> You are given an array of non-overlapping intervals intervals where intervals[i] = [starti, endi] represent the start and the end of the ith interval and intervals is sorted in ascending order by starti. You are also given an interval newInterval = [start, end] that represents the start and end of another interval.

Insert newInterval into intervals such that intervals is still sorted in ascending order by starti and intervals still does not have any overlapping intervals (merge overlapping intervals if necessary).

Return intervals after the insertion. </p> 

**example 1:**
```
Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
Output: [[1,5],[6,9]]
```

**example 2:**
```
Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
Output: [[1,2],[3,10],[12,16]]
Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10].
```

**Constraints:**
```
0 <= intervals.length <= 104
intervals[i].length == 2
0 <= starti <= endi <= 105
intervals is sorted by starti in ascending order.
newInterval.length == 2
0 <= start <= end <= 105
```

 ### Solution 1 leetcode

```Python
class Solution:
    def insert(self, intervals: List[List[int]], newInterval: List[int]) -> List[List[int]]:
        res = []
        for i in range(len(intervals)):
            if intervals[i][0] > newInterval[1]:
                res.append(newInterval)
                return res + intervals[i:]
            elif intervals[i][1] < newInterval[0]:
                res.append(intervals[i])
            else:
                newInterval = [min(newInterval[0], intervals[i][0]), max(newInterval[1], intervals[i][1])]
        
        res.append(newInterval)
        
        return res
        
Time complexity: O(N) Space complexity: O(N)
```
 ### Solution 1 lintcode

```Python
    def insert(self, intervals: List[Interval], newInterval: Interval) -> List[Interval]:
        results = []
        insertpos = 0
        for interval in intervals:
            if interval.end < newInterval.start:
                results.append(interval)
                insertpos += 1
            elif interval.start > newInterval.end:
                results.append(interval)
            else:
                newInterval.start = min(newInterval.start, interval.start)
                newInterval.end = max(newInterval.end, interval.end)
        
        results.insert(insertpos, newInterval)

        return results
        
Time complexity: O(N) Space complexity: O(N)
```

 ### Solution 2

```Python
class Solution:
    def insert(self, intervals: List[List[int]], newInterval: List[int]) -> List[List[int]]:
        intervals.append(newInterval)
        intervals.sort()
        stack = [intervals[0]]
        for i in range(1, len(intervals)):
            if stack[-1][-1] >= intervals[i][0]:
                stack[-1] = [min(stack[-1][0], intervals[i][0]), max(stack[-1][-1], intervals[i][1])]
            else:
                stack.append(intervals[i])
        
        return stack
    
Time complexity: O(NlogN) Space complexity  O(N)
```

```
Syntax of List insert()
The syntax of the insert() method is

list.insert(i, elem)
Here, elem is inserted to the list at the ith index. All the elements after elem are shifted to the right.
```
