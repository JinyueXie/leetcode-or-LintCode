We can practice this problem by clicking on this link.
>（https://www.lintcode.com/problem/1609/ or https://leetcode.com/problems/middle-of-the-linked-list/ ）
# Description:
 <p> Given the head of a singly linked list, return the middle node of the linked list.

If there are two middle nodes, return the second middle node.</p> 

**example 1:**
```
Input: head = [1,2,3,4,5]
Output: [3,4,5]
Explanation: The middle node of the list is node 3.
```

**example 2:**
```
Input: head = [1,2,3,4,5,6]
Output: [4,5,6]
Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.
```

**Constraints:**
```
The number of nodes in the list is in the range [1, 100].
1 <= Node.val <= 100
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
    @param head: the head node
    @return: the middle node
    """
    def middle_node(self, head: ListNode) -> ListNode:
        slow, fast = head, head
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
        
        return slow
                    
Time complexity: O(N) Space complexity: O(1)
```
