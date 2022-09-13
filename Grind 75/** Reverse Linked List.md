We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/35/description or https://leetcode.com/problems/reverse-linked-list/  ）
# Description:
 <p> Given the head of a singly linked list, reverse the list, and return the reversed list.

 </p> 

**example 1:**
```
Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]
```

**example 2:**
```
Input: head = [1,2]
Output: [2,1]
```


**example 3:**
```
Input: head = []
Output: []
```

**Constraints:**
```
The number of nodes in the list is the range [0, 5000].
-5000 <= Node.val <= 5000
```

 ### Solution 1

```Python
from lintcode import (
    ListNode,
)

"""
Definition of ListNode:
class ListNode(object):
    def __init__(self, val, next=None):
        self.val = val
        self.next = next
"""

class Solution:
    """
    @param head: n
    @return: The new head of reversed linked list.
    """
    def reverse(self, head: ListNode) -> ListNode:
        curt = None
        while head != None:
            temp = head.next
            head.next = curt
            curt = head
            head = temp
        
        return curt
        
Time complexity: O(N) Space complexity O(1)
```
