We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/223/solution or https://leetcode.com/problems/palindrome-linked-list/  ）
# Description:
 <p> Given the head of a singly linked list, return true if it is a palindrome or false otherwise. </p> 
**example 1:**
```
Input: head = [1,2,2,1]
Output: true
```

**example 2:**
```
Input: head = [1,2]
Output: false
```

**Constraints:**
```
The number of nodes in the list is in the range [1, 105].
0 <= Node.val <= 9
```

 ### Solution 1

```Python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def isPalindrome(self, head: Optional[ListNode]) -> bool:
        results = []
        while head:
            results.append(head.val)
            head = head.next
        
        return self.is_palindrome(results)

    def is_palindrome(self, check_list):
        n = len(check_list)
        left, right = 0, n - 1
        while left < right:
            if check_list[left] != check_list[right]:
                return False
            left += 1
            right -= 1
        
        return True
        
Time complexity: O(N) Space complexity: O(N)
```
 ### Solution 2

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
    @param head: A ListNode.
    @return: A boolean.
    """
    def is_palindrome(self, head: ListNode) -> bool:
        results = []
        while head:
            results.append(head.val)
            head = head.next
        
        return results == results[::-1]
        
Time complexity: O(N) Space complexity: O(N)
```
 ### Solution 3

```Python

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def isPalindrome(self, head: Optional[ListNode]) -> bool:
        slow = fast = head # taking two pointers.
        
        # Finding out the middle of the list.
        while fast and fast.next: # While node is there and its next node also exists.
            fast = fast.next.next # As per the approach of fast and slow pointers, fast moves with twice of slow pointer. Refer example provide below in description.
            slow = slow.next # Slow always moves to the next node. Refer example provide below in description.
        
        # reverse second half
        prev = None # taking to null pointer for reversing the references.
        while slow: # while we have nodes in the list. 
            nxt = slow.next # storing the value of next node so that after changes the reference we dont lose the next node value.
            slow.next = prev # reversing the refrence.
            prev = slow # updating the prev pointer to the current node.
            slow = nxt # here we`ll move the current pointer(slow) to the next node that why we stored the value befor hand in slow pointer.
            
        # check palindrome
        left, right = head, prev # taking two pointer, we took right = prev bcz in the first while loop prev pointer will be pointing to the last element.
        while right: # while we have node in the list. 
            if left.val != right.val: # if beg value & end value is not same which it should be if it palindrome.
                return False # then we`ll return false.
            left = left.next # else we`ll increase the left pointer.
            right = right.next # as well as right pointer.
        return True # if there would be any conflits(diffrent values from the beg and end) implies it is a palindrome.
        
        
  Time complexity: O(N) Space complexity: O(1)
```
